export ZSH=/Users/deanmerchant/.oh-my-zsh
export ANDROID_HOME=/usr/local/opt/android-sdk
export EDITOR=idea
export REACT_EDITOR=idea
export PGDATA=/usr/local/var/postgres
export CABALROOT=/Users/deanmerchant/.cabal
export STACKROOT=/Users/deanmerchant/.local
export DOTNET_CLI_TELEMETRY_OPTOUT=1 # This disables the telemetry

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
plugins=(docker git heroku stack sublime yarn)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias dnsmasq-edit="sublime /usr/local/etc/dnsmasq.conf"
alias dnsmasq-restart="sudo launchctl stop homebrew.mxcl.dnsmasq && sudo launchctl start homebrew.mxcl.dnsmasq"
alias edit="sublime"
alias fork="open -a Fork"
alias edit-hosts="sudo sublime /etc/hosts"
alias gradlew-init=""
alias mvnw-init="curl -Ls https://github.com/shyiko/mvnw/releases/download/0.1.0/mvnw.tar.gz | tar xvz"
alias ohmyzsh="sublime ~/.oh-my-zsh"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias stack-ide="ghcid --command=\"stack repl\""
alias side="stack-ide"
alias sghci="stack ghci"
alias zshconfig="sublime ~/.zshrc"


# Ensure docker machine is running and available: https://github.com/docker/toolbox/issues/453
if [[ $(docker-machine status default) != "Running" ]]; then
    echo "Starting up the default docker machine..."
    docker-machine start default > /dev/null 2>&1
fi

eval $(docker-machine env default)
