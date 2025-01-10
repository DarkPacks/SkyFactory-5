# SkyFactory 5 [![Curseforge][curseimg]][curselink]

[![Twitch Status](https://img.shields.io/twitch/status/darkosto?color=411145&label=Darkosto&logo=twitch)](https://twitch.tv/darkosto) [![Discord][discordimg]][discordlink]

[discordimg]: https://img.shields.io/discord/329440410839678986.svg?logo=discord&logoWidth=18&colorB=7289DA
[discordlink]: https://discord.gg/darkosto
[curseimg]: http://cf.way2muchnoise.eu/392141.svg
[curselink]: https://www.curseforge.com/minecraft/modpacks/skyfactory-5

## Development

The repo utilizes Node.js (and npm) to manage build tools, and other useful dependencies. In addition, the repo includes pre-configured settings and recommended extensions to improve the developer experience, so VSCode is recommended.

1. [Getting Started](#getting-started)
2. [Development Loop](#development-loop)
3. [Additional Scripts](#additional-scripts)

### Getting Started

When first starting development, make sure you go through these steps to get your development environment set up.

1. [Installing / Setting Up Node](#nodejs--npm)

#### Node.js / NPM

To get started, make sure you have Node.js installed. For easier management of your Node.js version, we recommend installing NVM (Node Version Manager) instead. For Windows you can install from the latest release [here](https://github.com/coreybutler/nvm-windows/releases) and for OSX/Linux follow the steps [here](https://github.com/nvm-sh/nvm#installing-and-updating).

Once installed, run `nvm install 20.5.1` then `nvm use 20.5.1` once the installation completes.

### Development Loop

1. Install any recommended project extensions.
2. Ensure you are using the correct Node.js version by running `npm run setup:node`.
3. If you've pulled in changes, make sure you've updated your dependencies by running `npm install`.
4. Run `npm run start` to start Minecraft.
5. Work on the project.

### Updating Minecraft or Forge version

The versions used are tracked in the [mc-package.json](./mc-package.json) file. To update:

1. Change the versions in the [mc-package.json](./mc-package.json) file.
2. Update the [settings.bat](./src/server/settings.bat) file.
3. Update the [settings.sh](./src/server/settings.sh) file.

### Additional Scripts

These are additional scripts that are provided for easing development processes.

- `npm run generate` starts a prompt to generate certain project files.
- `npm run symlink` generates symlinks between the repo and a minecraft instance.

## Release

### Creating A Release

To create a new release:

1. Increment the version in the [mc-package.json](./mc-package.json) file.
2. Run `npm run release` to generate a client and server zip file in the [.releases directory](./releases/)`.

### Ignoring Files

Files in the repo can be ignored from releases by adding to the respective releaseignore file:

- For client-only ignore entries: [.releaseignore-client](./releaseignore-client)
- For server-only ignore entries: [.releaseignore-server](./releaseignore-server)
  - A common use case for this is to ignore client-only mods.
- For ignore entries that apply to both client and server releases: [.releaseignore-shared](./releaseignore-shared)
