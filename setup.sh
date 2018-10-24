# install common utilities
sudo apt-get install git -y
sudo apt-get install curl -y
sudo apt-get install zsh -y

# install python stuff
sudo apt-get install python-pip python-dev build-essential -y
sudo pip install --upgrade pip
sudo pip install --upgrade pipenv
sudo pip install virtualenvwrapper
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

# configure git
git config --global user.email "riizade@gmail.com"
git config --global user.name "Adam James-Liebau Johnson"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# install powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# configure zsh
mkdir ~/.zfunc
cp ./config/.zshrc ~/.zshrc
# install powerline fonts
git clone https://github.com/powerline/fonts.git ~/Downloads/fonts
cp -a ~/Downloads/fonts/SourceCodePro/. ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts
# configure terminal settings
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ./config/riizade.dconf

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
sudo apt-get install google-chrome-stable
sudo apt-get install chrome-gnome-shell

# install visual modifications
sudo apt-get install gnome-tweaks