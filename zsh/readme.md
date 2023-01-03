## Install iTerm2

`brew cask install iterm2`

## Config ZSH

`brew install zsh`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

`upgrade_oh_my_zsh`

## Install ZSH Plugins

`git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`

## Install Theme

`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

## Download Font

`git clone https://github.com/powerline/fonts.git`

`cd fonts
./install.sh`

set font of your terminal to `Inconsolata for Powerline`

use `.zshrc` for your `~/.zshrc` file.

![image](https://user-images.githubusercontent.com/44297246/209336590-c0e3f432-46e8-4a11-9083-53a140e0454d.png)
