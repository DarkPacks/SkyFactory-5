import path from "path";
import { MinecraftPackage } from "schemas/mc-package";
import { downloadFile } from "scripts/utils/download";
import { checkFileExists, emptyDirectory } from "scripts/utils/file";

const forgeBaseUrl =
  "https://maven.minecraftforge.net/net/minecraftforge/forge/";

export class ForgeManager {
  private mcPackage: MinecraftPackage;
  private minecraftDirectory: string;

  constructor(mcPackage: MinecraftPackage, minecraftDirectory: string) {
    this.mcPackage = mcPackage;
    this.minecraftDirectory = minecraftDirectory;
  }

  get forgeVersion(): string {
    return this.mcPackage.forgeVersion;
  }

  get fullForgeVersion(): string {
    return `${this.mcPackage.minecraftVersion}-${this.forgeVersion}`;
  }

  get rootDirectory(): string {
    return path.join(this.minecraftDirectory, "forge");
  }

  async ensureDownloaded() {
    const file = `forge-${this.fullForgeVersion}-installer.jar`;
    const filePath = path.join(this.rootDirectory, file);
    const fileExists = await checkFileExists(filePath);

    if (!fileExists) {
      await emptyDirectory(this.rootDirectory);
      await this.download();
    }

    return filePath;
  }

  async download() {
    const url = `${forgeBaseUrl}/${this.fullForgeVersion}/forge-${this.fullForgeVersion}-installer.jar`;

    await downloadFile(url, this.rootDirectory);

    console.log(`Downloaded forge version ${this.forgeVersion}`);
  }
}
