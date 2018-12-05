#!/bin/bash

if [ "$EUID" -ne "0" ]; then
    echo "This script must be run as root."
    exit 1
fi

# Install jekyll and Apache
apt-get update
apt-get install -y git
git clone https://github.com/dlux/InstallScripts.git
pushd InstallScripts
./install_jekyllrb.sh --apache
popd

# Generate blog pages and place it on Apache root folder
pushd dashboard
jekyll build -d /var/www/html/dashboard

echo 'Installation completed'
echo 'goto: http://localhost/dashboard'
