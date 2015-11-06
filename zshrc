# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
 DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
if [[ -e /etc/zsh_command_not_found ]]; then
	plugins=(git brew command-not-found extract gem)
else
	plugins=(git brew extract gem)
fi


source $ZSH/oh-my-zsh.sh
export CLICOLOR=1export LSCOLORS=ExFxCxDxBxegedabagacad

# Customize to your needs...
if [[ `uname -a | grep Darwin` != '' ]]; then
	export PATH=/usr/local/bin:$PATH
fi
PROMPT=$'%{\e[01;32m%}%n@%m%{\e[00m%}:%{\e[01;34m%}%5c%{\e[00m%}\$ '
TERM="xterm-256color"

alias la='ls -A'
