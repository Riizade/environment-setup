# get parent directory of this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# git
echo "installing git..."
sudo apt-get install git -y

# configure git
echo "configuring git..."
git config --global user.email "riizade@gmail.com"
git config --global user.name "Adam James-Liebau Johnson"

# curl
echo "installing curl..."
sudo apt-get install curl -y

# install zellij
echo "installing zellij..."
sudo snap install zellij

# install alacritty terminal emulator
echo "installing alacritty..."
sudo snap install alacritty --classic

# install Starship
echo "installing starship..."
sudo snap install starship

# install fish
echo "installing fish shell..."
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-get update
sudo apt-get install fish -y
# set fish as default shell
sudo sh -c 'echo /usr/local/bin/fish >> /etc/shells'

# install python stuff
echo "installing python3..."
sudo apt-get install python3-pip python3 build-essential -y
sudo pip3 install --upgrade pip3
sudo pip3 install --upgrade pipenv
sudo pip3 install virtualenvwrapper

# configure terminal settings
dconf load /org/gnome/terminal/legacy/profiles:/ < ../config/gnome-terminal-profiles.dconf

# install Visual Studio Code
echo "installing visual studio code..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code -y

# install Google Chrome
echo "installing google chrome..."
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
curl https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add
sudo apt-get update
sudo apt-get install google-chrome-stable -y
sudo apt-get install chrome-gnome-shell -y

# install visual modifications
echo "installing gnome-tweaks..."
sudo apt-get install gnome-tweaks -y

# install syncthing
echo "installing syncthing..."
bash $SCRIPT_DIR/install-syncthing.sh

# update configurations
echo "updating all configurations..."
bash $SCRIPT_DIR/update-configs.sh