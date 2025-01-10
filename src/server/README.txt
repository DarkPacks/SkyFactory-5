SkyFactory® 5 Server Guide

In this download you'll find two scripts one for Windows, Linux and Mac which will run the Forge Installer
to get the needed files for you! Like magic!

Hardware Notes:
	- Recommended Min Memory is 4GB (You might be able to run it with less, but it's not optimal)
	- A modern processor/system which would be running the server.

To get your server up and running just run the following:

- Windows:
	- Run Install.bat
- Linux & Mac:
	- Run Install.sh

Once the script finishes you'll be able to start your server. Please note the server does use a fair
amount of RAM and is taxing on the CPU; so please ensure you have a system capable to run a server.
Especially if you are planning to have a lot users on the server.

Don't forget you'll need to accept/create the EULA file for the server to start!
Also you'll find a `user_jvm_args.txt` file which you can edit for the Java Options used for starting the server, including RAM allocation.

NOTE: Java 17 is recommended to be used for the server.

To start the server you can perform the following:

- Windows:
	- Launch the run.bat script.
- Linux & Mac:
	- Launch the run.sh script.

NOTE: The server will crash first time with the EULA not being accepted. You can run the server let it crash then
edit the eula.txt file to change "false" to "true". Alternatively copy the following into a newly created file called "eula.txt" in the root directory (same place as this file). You'll need to change the false to true yourself:

#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://account.mojang.com/documents/minecraft_eula).
eula=false



If you're having issues launching the server see: README_Troubleshooting_tips.txt in the root folder next to this file.

You don't have to use the run Scripts at all; if you know what you are doing by all means create your
own scripts to run the server. It's your server!

But thank you from the team for download and playing the SkyFactory 5 Pack. If you find any issues or
bugs please file them at our tracker: https://github.com/DarkPacks/SkyFactory-5/issues