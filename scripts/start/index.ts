import chalk from "chalk";
import { mkdir } from "fs/promises";
import { Client, ILauncherOptions, IUser } from "minecraft-launcher-core";
import { Auth, Minecraft } from "msmc";
import { MinecraftPackage } from "schemas/mc-package";
import { ForgeManager } from "scripts/utils/forge";
import { readMinecraftPackage } from "scripts/utils/mc-package";
import "dotenv/config";

const mcDirectory = "./minecraft";

(async function main() {
  const mcPackage = await readMinecraftPackage();

  const main = new Main(mcPackage);
  main.start();
})();

class Main {
  private mcPackage: MinecraftPackage;
  private forgeManager: ForgeManager;

  constructor(mcPackage: MinecraftPackage) {
    this.mcPackage = mcPackage;
    this.forgeManager = new ForgeManager(this.mcPackage, mcDirectory);
  }

  async start() {
    await this.prepareDirectories();

    const forgeFilePath = await this.forgeManager.ensureDownloaded();
    await this.launchMinecraft(forgeFilePath);
  }

  private async prepareDirectories() {
    await mkdir(mcDirectory, { recursive: true });
    await mkdir(this.forgeManager.rootDirectory, { recursive: true });
  }

  private async authenticateUser(): Promise<Minecraft> {
    const authManager = new Auth("select_account");
    const xboxManager = await authManager.launch("raw");

    return xboxManager.getMinecraft();
  }

  private async launchMinecraft(forgeFilePath: string) {
    const token = await this.authenticateUser();

    const launcher = new Client();

    const opts: ILauncherOptions = {
      authorization: token.mclc() as unknown as Promise<IUser>,
      root: "./minecraft",
      version: {
        number: this.mcPackage.minecraftVersion,
        type: "release",
      },
      memory: {
        max: process.env.MC_MEM_MAX || "8G",
        min: process.env.MC_MEM_MIN || "8G",
      },
      forge: forgeFilePath,
      javaPath: process.env.MC_JAVA_PATH || undefined,
    };

    launcher.launch(opts);

    launcher.on("debug", this.onLauncherMessage.bind(this));
    launcher.on("data", this.onLauncherMessage.bind(this));
  }

  private onLauncherMessage(msg: string) {
    msg = msg.replace(/^\s+|\s+$/, "");

    const matches = msg.match(/^\[\d\d:\d\d:\d\d.\d\d\d\] \[\w+\/([A-Z]+)\]/i);

    if (matches && matches[1]) {
      const level = matches[1].toLowerCase();
      if (level === "warn") {
        return console.log(chalk.yellow(msg));
      }
      if (level === "error") {
        return console.log(chalk.red(msg));
      }
    }

    if (msg.startsWith("Exception")) {
      return console.log(chalk.red(msg));
    }

    return console.log(msg);
  }
}
