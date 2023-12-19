#!/usr/bin/env zsh
{ # This ensures the entire script is downloaded.

set -eo pipefail

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

echo "Done."

} # This ensures the entire script is downloaded.
