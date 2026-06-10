set -exuo pipefail

# get parent directory of this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# install fonts
echo "updating fonts..."
mkdir -p ~/.local/share/fonts
cp -a $SCRIPT_DIR/../fonts/. ~/.local/share/fonts
fc-cache -vf ~/.local/share/fonts
