# get parent directory of this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# fish
echo "updating Fish shell..."
mkdir -p ~/.config/fish/
cp $SCRIPT_DIR/../config/config.fish ~/.config/fish/config.fish

# alacritty
echo "updating Alacritty..."
mkdir -p ~/.config/alacritty
cp $SCRIPT_DIR/../config/alacritty.toml ~/.config/alacritty/alacritty.toml

# starship
echo "updating Starship..."
mkdir -p ~/.config/
cp $SCRIPT_DIR/../config/starship.toml ~/.config/starship.toml

# zellij
echo "updating Zellij..."
mkdir -p ~/.config/zellij
cp $SCRIPT_DIR/../config/zellij-config.kdl ~/.config/zellij/config.kdl

# vscode
echo "updating Visual Studio Code..."
mkdir -p ~/.config/Code/User/
cp $SCRIPT_DIR/../config/vscode.settings.json ~/.config/Code/User/settings.json

# install fonts
echo "updating fonts..."
mkdir -p ~/.local/share/fonts
cp -a $SCRIPT_DIR/../fonts/. ~/.local/share/fonts
fc-cache -vf ~/.local/share/fonts