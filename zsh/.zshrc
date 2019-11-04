# NVM stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# If you come from bash you might have to change your $PATH.
  export PATH=$PATH:$HOME/bin:~/.local/bin

# Path to your oh-my-zsh installation.
  export ZSH="/home/jtanadi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Commands
alias open="xdg-open"
alias copy="xclip -selection clipboard"
alias restartcompton="pkill compton; compton -b"
alias postgres="service postgresql start"
alias startSSH='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa'

# Editing configs
alias configi3="vim ~/.config/i3/config"
alias configi3blocks="vim ~/.config/i3/i3blocks.conf"
alias configcompton="vim ~/.config/compton.conf"
alias configvim="vim ~/.vimrc"
alias configzsh="vim ~/.zshrc"
alias configterm="vim ~/.config/alacritty/alacritty.yml"

# change dir aliases
alias svsp="cd ~/Work/CSedu/0-FullStack\ Academy/2-Senior/1-grace-shopper"
alias dejaview="cd ~/Work/CSedu/0-FullStack\ Academy/2-Senior/2-stackathon"
alias sandbox="cd ~/Work/sandbox"
alias csEdu="cd ~/Work/CSedu/"
alias cs50="cd ~/Work/CSedu/1-Core\ Programming/0-CS50/"
alias simpleData="cd ~/Work/CSedu/1-Core\ Programming/1-HowToCode-SimpleData"
alias nodeSchool="cd ~/Work/CSedu/1-Core\ Programming/z-NodeSchool"
alias fullstack="cd ~/Work/CSedu/0-FullStack\ Academy/"
alias fullstackNotes="cd ~/Work/CSedu/0-FullStack\ Academy/z-Notes"
alias algorithms1="cd /home/jtanadi/Work/CSedu/3-Core\ Theory/1-Algorithms1"
alias work="cd ~/Work/"
alias cork="cd ~/Work/cork"
alias raaIndd="cd ~/Work/raa/indd"
alias raaPy="cd ~/Work/raa/py"
alias dotfiles="cd ~/Work/dotfiles"

