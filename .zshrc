export ZSH=/Users/deanmerchant/.oh-my-zsh
export ANDROID_HOME=/usr/local/Caskroom/android-sdk/3859397/
export EDITOR=idea
export GOPATH=~/workspace/golang
export REACT_EDITOR=idea
export PGDATA=/usr/local/var/postgres
export STACKROOT=/Users/deanmerchant/.local
export DOTNET_CLI_TELEMETRY_OPTOUT=1 # This *disables* the telemetry
export UPDATE_ZSH_DAYS=15
export GPG_TTY=$(tty)


# Provide modules installed by yarn global add
export PATH="$PATH:`yarn global bin`"
# Add haskell binaries
export PATH=$PATH:$STACKROOT/bin
# Add go workspace binaries
export PATH=$PATH:$(go env GOPATH)/bin
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

COMPLETION_WAITING_DOTS="true"
DEFAULT_USER="λ"
HIST_STAMPS="yyyy-mm-dd"
ZSH_THEME="pygmalion"

plugins=(docker git golang heroku ruby sublime yarn)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias create-react-app-ts="create-react-app --scripts-version=react-scripts-ts"
alias dnsmasq-edit="sublime /usr/local/etc/dnsmasq.conf"
alias dnsmasq-restart="sudo launchctl stop homebrew.mxcl.dnsmasq && sudo launchctl start homebrew.mxcl.dnsmasq"
alias edit="sublime"
alias fork="open -a Fork"
alias edit-hosts="sudo sublime /etc/hosts"
alias mvnw-init="curl -Ls https://github.com/shyiko/mvnw/releases/download/0.1.0/mvnw.tar.gz | tar xvz"
alias ohmyzsh="sublime ~/.oh-my-zsh"
alias pixel="open -a /Applications/Pixelmator.app"
alias stack-ide="ghcid --command=\"stack repl\""
alias side="stack-ide"
alias sghci="stack ghci"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias zshconfig="sublime ~/.zshrc"

function what-on {  
  echo "COMMAND PID USER FD TYPE DEVICE SIZE/OFF NODE NAME"
  echo $(lsof -n -i4TCP:$1 | grep LISTEN)
}
