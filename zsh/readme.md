## Install iTerm2

`brew cask install iterm2`

## Config ZSH

`brew install zsh`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

`upgrade_oh_my_zsh`

## Install ZSH Plugins

`git clone https://github.com/zsh-users/zsh-docker.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-docker`

## Install Theme

`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

## Download Font

`git clone https://github.com/powerline/fonts.git`

`cd fonts
./install.sh`

set font of your terminal to `Inconsolata for Powerline`

use `.zshrc` for your `~/.zshrc` file.
