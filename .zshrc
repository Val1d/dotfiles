# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/valid/.oh-my-zsh

export GOPATH=/Users/valid/go
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export CPPFLAGS="-I/usr/local/opt/libffi/include"

alias ports="sudo lsof -PiTCP -sTCP:LISTEN"
alias pp="ptpython3"
alias work="cd ~/Documents/Work"
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias brew='arch -arm64e /opt/homebrew/bin/brew'
alias gg='rlwrap yaegi -unrestricted'
alias ga='git add'
alias gs='git status'
alias gl='git log'
alias gc='git commit'
alias gp='git push'
alias python=python3
alias .zshrc="vim ${HOME}/.zshrc && source ${HOME}/.zshrc"
alias vi=nvim
alias pip="python3 -m pip"
alias tf=terraform

export HOMEBREW_ARTIFACTORY_SECRET=AKCp5dLCcDynXVea9hezKcYKhcafWodoGbr6ECKcjbBQQ574vq4BXrB81piqJiRxXECT7rZNd


export XDG_DATA_HOME=/Users/valid/.config

export LC_ALL=en_US.UTF-8

rm() {
   if [[ "$@" == *"-fr"* ]] || [[ "$@" == *"-rf"* ]]; then
      echo "Stop." >&2
      echo "Seriously." >&2
      echo "You almost blew up your computer." >&2
      echo 'WHAT WERE YOU THINKING!?!?!' >&2
      echo "You are going to execute rm $@. Are you sure? Type exactly 'yes' if you are."
      read is_sure
      if [[ $is_sure == "yes" ]]; then
         /bin/rm $@
      fi
   else
     /bin/rm $@
   fi
}

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  history-substring-search
  zsh-peco-history
#  zsh-autosuggestions
#  zsh-syntax-highlighting
  virtualenv
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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval "$(thefuck --alias)"

PATH="/Users/valid/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/valid/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/valid/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/valid/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/valid/perl5"; export PERL_MM_OPT;
typeset -U path
path=(
    $HOME/go/bin
    $path
)
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/helm@2/bin:$PATH"
export PATH="/usr/local/Cellar/gettext/0.20.1/bin:$PATH"
export PATH="/usr/local/Cellar/python@3.8/3.8.1/bin:$PATH"
export PATH="/usr/local/Cellar/gcc/11.1.0_1/bin:$PATH"

b64() {
    echo "$1" | base64 -D; echo
}

# Created by `userpath` on 2021-02-03 11:43:54
export PATH="$PATH:/Users/valid/.local/bin"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0)
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

TMUX_PLUGIN_MANAGER_PATH="/Users/valid/.tmux/plugins/"; export TMUX_PLUGIN_MANAGER_PATH;

eval "$(pyenv init -)"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH
