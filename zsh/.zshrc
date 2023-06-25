export PATH=$HOME/bin:/usr/local/bin:$PATH
source /Users/$USER/.bash_profile
export ZSH="$HOME/.oh-my-zsh"
source ~/.fonts/*.sh

# -------------------- THEME CONFIGS --------------------

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'


POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

get_shamsi_date(){
    local date=$(\
        curl -s https://api.keybit.ir/time/ \
        | python -c "import sys, json; print json.load(sys.stdin)['date']['full']['official']['usual']['en']"\
    )
    echo $date
}

POWERLEVEL9K_CUSTOM_SHAMSI_DATE="get_shamsi_date"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(date time vcs newline dir_writable dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time load ram ip battery)

POWERLEVEL9K_STATUS_CROSS=true


# POWERLEVEL9K_BATTERY_STAGES=(
#    $'░░░░░▏'
#    $'█░░░░▏'
#    $'██░░░▏'
#    $'███░░▏'
#    $'████░▏' )
POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"

POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(darkred orange4 darkgreen)

POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=10
POWERLEVEL9K_BATTERY_VERBOSE=false
# POWERLEVEL9K_BATTERY_HIDE_ABOVE_THRESHOLD=90

POWERLEVEL9K_BATTERY_LOW_BACKGROUND='transparent'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='transparent'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='transparent'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='transparent'

POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='lightgoldenrod3'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='darkseagreen4'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='grey66'


# `status` color customization
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='transparent'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='red1'
POWERLEVEL9K_STATUS_OK_BACKGROUND='transparent'
POWERLEVEL9K_STATUS_OK_FOREGROUND='darkseagreen4'


# `command_execution_time ` color customization
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='darkkhaki'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='transparent'

# `load` color customization
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="transparent"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red1"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="transparent"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="lightgoldenrod3"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="transparent"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="darkseagreen4"



POWERLEVEL9K_DATE_FORMAT=%D{%Y/%m/%d}

# `shamsi date` color customization
POWERLEVEL9K_CUSTOM_SHAMSI_DATE_BACKGROUND='transparent'
POWERLEVEL9K_CUSTOM_SHAMSI_DATE_FOREGROUND='lightgoldenrod3'

# `date` color customization
POWERLEVEL9K_DATE_BACKGROUND='transparent'
POWERLEVEL9K_DATE_FOREGROUND='lightgoldenrod3'

# `time` color customization
POWERLEVEL9K_TIME_BACKGROUND='transparent'
POWERLEVEL9K_TIME_FOREGROUND='orange3'

# `vcs` color customization
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='darkseagreen4'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='transparent'

POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='red'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='transparent'

POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='lightgoldenrod3'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='transparent'

POWERLEVEL9K_VCS_COMMIT_ICON=""
POWERLEVEL9K_VCS_GIT_ICON=" "

# `ram` color customization
POWERLEVEL9K_RAM_BACKGROUND='transparent'
POWERLEVEL9K_RAM_FOREGROUND='orange3'



# `ip` color customization
POWERLEVEL9K_IP_BACKGROUND='transparent'
POWERLEVEL9K_IP_FOREGROUND='mediumpurple2'

# `host` color customization
POWERLEVEL9K_HOST_LOCAL_BACKGROUND='grey15'
POWERLEVEL9K_HOST_LOCAL_FOREGROUND='yellow'

# `dir` color customization
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='transparent'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='darkseagreen4'

POWERLEVEL9K_DIR_HOME_BACKGROUND='transparent'
POWERLEVEL9K_DIR_HOME_FOREGROUND='deepskyblue3'

POWERLEVEL9K_DIR_ETC_BACKGROUND='transparent'
POWERLEVEL9K_DIR_ETC_FOREGROUND='lightgoldenrod3'

POWERLEVEL9K_DIR_ROOT_BACKGROUND='transparent'
POWERLEVEL9K_DIR_ROOT_FOREGROUND='darkseagreen4'

POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND='transparent'
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND='red'

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='transparent'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='lightgoldenrod3'


POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_DELIMITER="…"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_VCS_SHORTEN_LENGTH=12
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=3
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DELIMITER="…"

POWERLEVEL9K_SHOW_CHANGESET=true

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
alias gl="echo '⬇️  Pulling Code:' && git pull && echo '✨ Pulled successfully!'"
alias gp="echo '⬆️  Pushing Code:' && git push && echo '✨ Pushed successfully!'"
alias gs="echo '🔎 Status:' && git status -s"
# alias gcm='f() { echo "📝 Committing changes:" && git commit -m "$(git rev-parse --abbrev-ref HEAD): $(capitalize_first_letter $1)." };f'
alias gcm='f() { echo "📝 Committing changes:" && git commit -m "$1" };f'
alias gcmp='gcm && gp'
# alias gcnm='f() { echo "📝 Committing changes:" && git commit -nm "$(git rev-parse --abbrev-ref HEAD): $(capitalize_first_letter $1)." };f'
alias gcnm='f() { echo "📝 Committing changes:" && git commit -nm "$1" };f'
alias gcnmp='gcnm && gp'
alias ga='f() { git add $1 && gs };f'
alias gpod="echo '⬇️  Pulling Development...' && git pull origin development && echo '✨ Pulled successfully!'"
alias ga.="git add . && gs"
alias gco.="gco ."
alias glog="git log --oneline --decorate --graph  --pretty='format:%C(#F4BE69)%h %Cresetby %C(#CC8243)%an%Creset at %C(#9E7BB0)%ah%Creset: %C(#6A8759)%s'"
alias hotfix='f() { echo "🔥 HOT FIX!" && git add . && gs && gcm "fix: HOT FIX 🔥" && gp };f'
alias pullpush="gpod && gp"
alias greset='f() { echo "🔄 Reset..." && git reset };f'
alias ga.cm='f() { git add . && gs && gcm $1 };f'
alias ga.cnm='f() { git add . && gs && gcnm $1 };f'
alias ga.cmp='ga.cm && gp'
alias ga.cnmp='ga.cnm && gp'
alias gacm='f() { git add $1 && gs && gcm $2 };f'
alias gacnm='f() { git add $1 && gs && gcnm $2 };f'
alias gacmp='f() { git add $1 && gs && gcm $2 && gp };f'
alias gacnmp='f() { git add $1 && gs && gcnm $2 && gp };f'
alias gcheckpoint='f() { ga.cm "fix: 📌 CHECKPOINT" };f'
alias checkpoint='gcheckpoint'
alias gfix='f() { ga.cm "fix: remove and fix bugs" };f'
alias gfixp='f() { gfix && gp };f'

# k8s
alias k="kubectl"

# docker
alias dcd="docker-compose down"
alias dcu="docker-compose up"
alias dcup="dcu"
alias dcud="docker-compose up -d"
alias dcupd="dcud"

# other
alias cd='f() { echo 🐾 ${BGreen}$1${Color_Off} && cd $1 };f'
alias y="yarn"
alias tree="tree -C"
alias curljson='f() { $($1) | json_pp };f'
alias csv="sed 's/,,/, ,/g;s/,,/, ,/g' $1 | column -s, -t" 
alias fgc="getColorCode foreground"
alias bgc="getColorCode background"
alias code="echo '💻 Opening VSCode...' && open -a 'Visual Studio Code'"
alias forti="echo '🔐 Running Forti VPN:' && sudo openfortivpn -c /usr/local/etc/openfortivpn/openfortivpn/config"
alias curl="echo 'Running Curl...' && curl"
alias sayFarsi="say -v Dariush"
alias sayPersian="sayFarsi"



# -------------------- END OF SET ALIASES --------------------



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


PATH="~/.nvm/versions/node/v14.18.3/bin:$PATH"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
