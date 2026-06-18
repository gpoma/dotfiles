if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

if [ -f ~/.local/share/sensible.bash ]; then
	source ~/.local/share/sensible.bash
fi

if [ -f /usr/share/git/git-prompt.sh ]; then
	source /usr/share/git/git-prompt.sh
fi

export FIGNORE=$FIGNORE:CVS:'~':.swp

# Composer bin dans le path
PATH=$PATH:$HOME/.config/composer/vendor/bin/:$HOME/.local/share/bin/
PATH=$PATH:$HOME/.cargo/bin/ # for rust
PATH=$PATH:/usr/local/bin/ # for croc
PATH=$PATH:$HOME/.local/bin/

# PHPBrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
export PHPBREW_SET_PROMPT=1

# fzf config
FZF_COMPLETION_FILE=/usr/share/bash-completion/completions/fzf
[[ -f $FZF_COMPLETION_FILE ]] && source $FZF_COMPLETION_FILE

FZF_KEYBINDING_FILE=/usr/share/fzf/key-bindings.bash
[[ -f $FZF_KEYBINDING_FILE ]] && source $FZF_KEYBINDING_FILE

OLD_PS1=$PS1
BRANCH='$(__git_ps1 "(%s) ")'

PS1="$BRANCH$OLD_PS1"

PROMPT_COMMAND='jobs=$(jobs -p)'
PS1="${jobs:+\j }$PS1"

export XCURSOR_SIZE="$(gsettings get org.gnome.desktop.interface cursor-size)"
export PATH=/home/gabriel/.local/bin:$PATH
