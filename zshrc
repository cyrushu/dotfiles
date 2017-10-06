# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '+m:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select=long-list select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/yilang/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -e
# End of lines configured by zsh-newuser-install

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="random"
ZSH_THEME=rkj-repos
#ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(pip python tmux)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# personal aliases file
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# export MANPATH="/usr/local/man:$MANPATH"

if [ -f ~/.zsh_env ]; then
    . ~/.zsh_env
fi

# User function key
cdUndoKey() {
	popd      > /dev/null
	zle       reset-prompt
	echo
	ls
	echo
}

cdParentKey() {
	pushd .. > /dev/null
	zle      reset-prompt
	echo
	ls
	echo
}


zle -N                 cdParentKey
zle -N                 cdUndoKey
bindkey '^[[1;3A'      cdParentKey
bindkey '^[[1;3D'      cdUndoKey

# disable ctrl+s to freeze terminal
stty -ixon

autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
alias help=run-help

if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f /usr/share/autojump/autojump.sh ]; then
	source /usr/share/autojump/autojump.sh
fi

if [ -f ~/.fzf.zsh ]; then
	source ~/.fzf.zsh
fi

