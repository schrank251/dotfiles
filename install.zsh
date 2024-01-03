#!/usr/bin/env zsh
{ # This ensures the entire script is downloaded.

set -eo pipefail

RUNZSH=no KEEP_ZSHRC=yes sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/powerlevel10k

echo "Done."

set +e

} # This ensures the entire script is downloaded.
