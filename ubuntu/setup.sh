# get parent directory of this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# install common utilities
sudo apt-get install git -y
sudo apt-get install curl -y
sudo apt-get install zsh -y

# install Starship
sudo snap install starship

# install python stuff
sudo apt-get install python3-pip python3 build-essential -y
sudo pip3 install --upgrade pip3
sudo pip3 install --upgrade pipenv
sudo pip3 install virtualenvwrapper

# configure git
git config --global user.email "riizade@gmail.com"
git config --global user.name "Adam James-Liebau Johnson"

# install fish
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-get update
sudo apt-get install fish -y

# set fish as default shell
sudo sh -c 'echo /usr/local/bin/fish >> /etc/shells'

# install alacritty terminal emulator
sudo snap install alacritty --classic

# configure terminal settings
dconf load /org/gnome/terminal/legacy/profiles:/ < ../config/gnome-terminal-profiles.dconf

# install Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code -y

# install Google Chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
curl https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add
sudo apt-get update
sudo apt-get install google-chrome-stable -y
sudo apt-get install chrome-gnome-shell -y

# install visual modifications
sudo apt-get install gnome-tweaks -y

# install syncthing
bash $SCRIPT_DIR/install-syncthing.sh

# update configurations
bash $SCRIPT_DIR/update-configs.sh