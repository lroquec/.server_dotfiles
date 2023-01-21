
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM="$ZSH_CONFIG/custom"
export DOTFILES="$HOME/.dotfiles"

export GIT_SSH_COMMAND="ssh -vvv -i ~/.ssh/github_key"

ZSH_THEME='kphoen'


###############
#  DIRCOLORS  #
###############

# eval dircolors
[[ -f "$HOME/.dircolors" ]] \
    && eval "$(dircolors "$HOME/.dircolors")"

plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)

HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%Y-%m-%d %T "

source $HOME/.zsh/alias.zsh
source $HOME/.zsh/functions.zsh

precmd() {
    source $HOME/.zsh/alias.zsh
}

export VISUAL=vim
export EDITOR=vim
export PATH="$PATH:/usr/local/sbin:$DOTFILES/bin:$HOME/.local/bin"

# Gruvbox colors fix
[[ -f "$HOME/.bin/fix-gruvbox-palette" ]] \
    && [[ "$TERM" != 'xterm-kitty' ]] \
    && [[ "$TERM" != 'tmux-256color' ]] \
    && source "$HOME/.bin/fix-gruvbox-palette"

ZSH_DISABLE_COMPFIX=true

alias dotfiles='/usr/bin/git --git-dir=/home/laura/.dotfiles/ --work-tree=/home/laura'

source $ZSH/oh-my-zsh.sh

. /usr/share/autojump/autojump.sh

neofetch

