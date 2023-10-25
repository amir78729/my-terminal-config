# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export PATH=$HOME/bin:/usr/local/bin:$PATH
source /Users/$USER/.bash_profile
export ZSH="$HOME/.oh-my-zsh"
source ~/.fonts/*.sh

# -------------------- THEME CONFIGS --------------------

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='awesome-fontconfig'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# -------------------- END OF THEME CONFIGS --------------------


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
  history
  sudo
  emoji
  jsontools
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# -------------------- SHOW ALIASES REAL COMMANDS --------------------
# local cmd_alias=""
# # Reveal Executed Alias
# alias_for() {
#   [[ $1 =~ '[[:punct:]]' ]] && return
#   local search=${1}
#   local found="$( alias $search )"
#   if [[ -n $found ]]; then
#     found=${found//\\//} # Replace backslash with slash
#     found=${found%\'} # Remove end single quote
#     found=${found#"$search='"} # Remove alias name
#     echo "${found} ${2}" | xargs # Return found value (with parameters)
#   else
#     echo ""
#   fi
# }
# expand_command_line() {
#   first=$(echo "$1" | awk '{print $1;}')
#   rest=$(echo ${${1}/"${first}"/})
# 
#   if [[ -n "${first//-//}" ]]; then # is not hypen
#     cmd_alias="$(alias_for "${first}" "${rest:1}")" # Check if there's an alias for the command
#     if [[ -n $cmd_alias ]]; then # If there was
#       echo "${T_GREEN}❯ ${T_YELLOW}${cmd_alias}${F_RESET}" # Print it
#     fi
#   fi
# }
# pre_validation() {
#   [[ $# -eq 0 ]] && return # If there's no input, return. Else...
#   expand_command_line "$@"
# }
# autoload -U add-zsh-hook  # Load the zsh hook module. 
# add-zsh-hook preexec pre_validation  # Adds the hook 

# -------------------- END OF SHOW ALIASES REAL COMMANDS --------------------



eval $(thefuck --alias)

setopt correct
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color? [Yes, No, Abort, Edit] "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tapsi/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tapsi/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tapsi/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tapsi/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
VOLTA_FEATURE_PNPM=1

# PATH="~/.nvm/versions/node/v14.18.3/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# -------------------- SET ALIASES --------------------

# funcitons
capitalize_first_letter() {
  foo=$(echo "$1")
  echo $(tr '[:lower:]' '[:upper:]' <<< ${foo:0:1})${foo:1}
}

# Reset
Color_Off="\033[0m"       # Text Reset

# Regular Colors
Black="\033[0;30m"        # Black
Red="\033[0;31m"          # Red
Green="\033[0;32m"        # Green
Yellow="\033[0;33m"       # Yellow
Blue="\033[0;34m"         # Blue
Purple="\033[0;35m"       # Purple
Cyan="\033[0;36m"         # Cyan
White="\033[0;37m"        # White

# Bold
BBlack="\033[1;30m"       # Black
BRed="\033[1;31m"         # Red
BGreen="\033[1;32m"       # Green
BYellow="\033[1;33m"      # Yellow
BBlue="\033[1;34m"        # Blue
BPurple="\033[1;35m"      # Purple
BCyan="\033[1;36m"        # Cyan
BWhite="\033[1;37m"       # White

# Underline
UBlack="\033[4;30m"       # Black
URed="\033[4;31m"         # Red
UGreen="\033[4;32m"       # Green
UYellow="\033[4;33m"      # Yellow
UBlue="\033[4;34m"        # Blue
UPurple="\033[4;35m"      # Purple
UCyan="\033[4;36m"        # Cyan
UWhite="\033[4;37m"       # White

# Background
On_Black="\033[40m"       # Black
On_Red="\033[41m"         # Red
On_Green="\033[42m"       # Green
On_Yellow="\033[43m"      # Yellow
On_Blue="\033[44m"        # Blue
On_Purple="\033[45m"      # Purple
On_Cyan="\033[46m"        # Cyan
On_White="\033[47m"       # White

# High Intensty
IBlack="\033[0;90m"       # Black
IRed="\033[0;91m"         # Red
IGreen="\033[0;92m"       # Green
IYellow="\033[0;93m"      # Yellow
IBlue="\033[0;94m"        # Blue
IPurple="\033[0;95m"      # Purple
ICyan="\033[0;96m"        # Cyan
IWhite="\033[0;97m"       # White

# Bold High Intensty
BIBlack="\033[1;90m"      # Black
BIRed="\033[1;91m"        # Red
BIGreen="\033[1;92m"      # Green
BIYellow="\033[1;93m"     # Yellow
BIBlue="\033[1;94m"       # Blue
BIPurple="\033[1;95m"     # Purple
BICyan="\033[1;96m"       # Cyan
BIWhite="\033[1;97m"      # White

# High Intensty backgrounds
On_IBlack="\033[0;100m"   # Black
On_IRed="\033[0;101m"     # Red
On_IGreen="\033[0;102m"   # Green
On_IYellow="\033[0;103m"  # Yellow
On_IBlue="\033[0;104m"    # Blue
On_IPurple="\033[10;95m"  # Purple
On_ICyan="\033[0;106m"    # Cyan
On_IWhite="\033[0;107m"   # White

# git
alias gl="echo '⬇️  Pulling Code...' && git pull && echo '✨ Pulled successfully!'"

alias gp="echo '🚀  Pushing Code...' && git push && echo '✨ Pushed successfully!'"

alias gs="echo '🔎 Status:' && git status -s"

# alias gcm='f() { echo "📝 Committing changes..." && git commit -m "$(git rev-parse --abbrev-ref HEAD): $(capitalize_first_letter $1)." };f'

alias gcm='f() { echo "📝 Committing changes..." && git commit -m "$1" };f'
alias gcmp='gcm && gp'

# alias gcnm='f() { echo "📝 Committing changes..." && git commit -nm "$(git rev-parse --abbrev-ref HEAD): $(capitalize_first_letter $1)." };f'

alias gcnm='f() { echo "📝 Committing changes..." && git commit -nm "$1" };f'
alias gcnmp='gcnm && gp'

alias ga='f() { git add $1 && gs };f'
alias ga.="git add . && gs"

alias gpod="echo '⬇️  Pulling Development...' && git pull origin development && echo '✨ Pulled successfully!'"

alias gco.="gco ."

alias glog="git log --oneline --decorate --pretty='format:%C(#F4BE69)%h %C(#CC8243)%ai%Creset %C(#9E7BB0)%an%Creset: %C(#6A8759)%s'"

alias hotfix='f() { echo "🔥 HOT FIX!" && ga. && gcm "fix: HOT FIX 🔥" && gp };f'
alias hotfixn='f() { echo "🔥 HOT FIX!" && ga. && gcnm "fix: HOT FIX 🔥" && gp };f'


alias pullpush="gpod && gp"

alias greset='f() { echo "🔄 Reset..." && git reset };f'

alias ga.cm='f() { ga. && gcm $1 };f'
alias ga.cnm='f() { ga. && gcnm $1 };f'

alias ga.cmp='f() { ga.cm $1 && gp }'
alias ga.cnmp='f() { ga.cnm $1 && gp }'

alias gacm='f() { ga $1 && gcm $2 };f'
alias gacnm='f() { ga $1 && gcnm $2 };f'
alias gacmp='f() { ga $1 && gcmp $2 };f'
alias gacnmp='f() { ga $1 && gcnmp $2 };f'

alias gpod="echo '⬇️  Pulling Development...' && git pull origin development && echo '✨ Pulled successfully!'"

alias gcheckpoint='f() { ga.cm "fix: 📌 CHECKPOINT" };f'
alias gcheckpointn='f() { ga.cnm "fix: 📌 CHECKPOINT" };f'
alias checkpoint='gcheckpoint'
alias checkpointn='gcheckpointn'

alias gfix='f() { ga.cm "fix: remove and fix bugs" };f'
alias gfixp='f() { gfix && gp };f'
alias gfixn='f() { ga.cnm "fix: remove and fix bugs" };f'
alias gfixnp='f() { gfixn && gp };f'

# k8s
alias k="kubectl"

# docker
alias dcd="echo '🐳 Stopping Containers...' && docker-compose down"
alias dcu="echo '🐳 Starting Containers...' && docker-compose up"
alias dcup="dcu"
alias dcud="dcu -d"
alias dcupd="dcud"


# yarn
alias y="yarn"
alias yr='f() { echo 🏃 Running ${BCyan}$1${Color_Off} script... && y run $1 };f'
alias ya='f() { echo 📦 Adding package ${BCyan}$1${Color_Off}... && y add $1 };f'
alias yi="echo '📦 Installing Packages...' && y install"

# npm
alias npmr='f() { echo 🏃 Running ${BCyan}$1${Color_Off} script... && npm run $1 };f'
alias npmi="echo '📦 Installing Packages...' && npm install"

# pnpm
alias pnpmr='f() { echo 🏃 Running ${BCyan}$1${Color_Off} script... && pnpm run $1 };f'
alias pnpmi="echo '📦 Installing Packages...' && pnpm install"


# other
alias ls='exa --icons --across' 
alias cd='f() { echo 🐾 ${BGreen}$1${Color_Off} && cd $1 };f'
alias tree="tree -C"
alias csv="sed 's/,,/, ,/g;s/,,/, ,/g' $1 | column -s, -t" 
alias fgc="getColorCode foreground"
alias bgc="getColorCode background"
alias forti="print -P  '%K{cyan}%F{black}%S🔐 Forti VPN:%s%f%k' && sudo ~/scripts/forti"
alias curl="echo 'Running Curl...' && curl"
alias curljson='f() { curl $1 | json_pp };f'
alias sayFarsi="say -v Dariush"
alias sayPersian="sayFarsi"
alias lofi-live="open https://www.youtube.com/watch\?v\=jfKfPfyJRdk -a 'Google Chrome'"

# apps
alias code="echo '💻 Opening VSCode...' && open -a 'Visual Studio Code'"
alias vscode='code' 
alias docker-desktop="echo '🐳 Opening Docker Desktop...' && open -a Docker\ Desktop" 
alias chrome="echo '⏳ Opening Google Chrome...' && open -a 'Google Chrome'" 
alias chrome-unsafe="echo '👽 Opening Google Chrome with disabled web security...' && open -na Google\ Chrome --args --user-data-dir=/tmp/temporary-chrome-profile-dir --disable-web-security" 
alias firefox="echo '🦊 Opening Firefox...' && open -a Firefox" 
alias safari="echo '🧭 Opening Safari...' && open -a Safari" 
alias telegram="echo '🚀 Opening Telegram...' && open -a Telegram" 
alias outlook="echo '📧 Opening Microsoft Outlook...' && open -a Microsoft\ Outlook" 

# tapsi automation-backend
alias run-seed='f() {curljson $1 && echo 🌱 The seed ran successfully};f'
alias seed-local='run-seed http://localhost:8590/front/api/v1/seed/Automation-Backend@123' 

pomodoro() {
  # usage: work 10m, work 60s etc. Default is 25m
  timer -f -n '✨ Pomodoro Timer' "${1:-25m}" && terminal-notifier -message 'Pomodoro'\
  	-title 'Timer is up! 🍅'\
        -sound Crystal
}

# -------------------- END OF SET ALIASES --------------------
