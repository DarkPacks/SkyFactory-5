#!/bin/sh

# Read the settings.
. ./settings.sh

install_files() {
    java -jar ${INSTALL_JAR} --installServer > /dev/null 2>&1
}

echo "Installing Forge and required jars."
install_files
echo "Done!"