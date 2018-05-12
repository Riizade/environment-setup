# install common utilities
sudo apt-get install git -y
sudo apt-get install curl -y
sudo apt-get install zsh -y

# configure git
  git config --global user.email "riizade@gmail.com"
  git config --global user.name "Adam James-Liebau Johnson"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# install powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# install Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code

# install Google Chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
curl https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo apt-get install chrome-gnome-shell

# install visual modifications
sudo apt-get install gnome-tweaks