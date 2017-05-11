# Path to your oh-my-zsh installation.
export ZSH=/Users/deanmerchant/.oh-my-zsh
export ANDROID_HOME=/usr/local/opt/android-sdk
export EDITOR=webstorm
export REACT_EDITOR=webstorm
export PGDATA=/usr/local/var/postgres
export CABALROOT=/Users/deanmerchant/.cabal
export STACKROOT=/Users/deanmerchant/.local

# Provide modules installed by yarn global add
export PATH="$PATH:`yarn global bin`"
export PATH=$PATH:$STACKROOT/bin
export PATH=$PATH:$CABALROOT/bin


ZSH_THEME="pygmalion"
DEFAULT_USER="λ"
export UPDATE_ZSH_DAYS=15

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git heroku stack sublime yarn)

source $ZSH/oh-my-zsh.sh

# User configuration

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

alias fork="open -a Fork"
alias ohmyzsh="sublime ~/.oh-my-zsh"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias zshconfig="sublime ~/.zshrc"

