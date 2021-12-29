source /usr/share/defaults/etc/profile

if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

if [ -f ~/.local/share/sensible.bash ]; then
	source ~/.local/share/sensible.bash
fi

if [ -f ~/.local/share/git-prompt.sh ]; then
	source ~/.local/share/git-prompt.sh
fi

# Composer bin dans le path
PATH=$PATH:$HOME/.config/composer/vendor/bin/:$HOME/.local/share/bin/
PATH=$PATH:$HOME/.cargo/bin/ # for rust
PATH=$PATH:/usr/local/bin/ # for croc
PATH=$PATH:$HOME/.local/bin/
PATH=$PATH:$HOME/.gem/ruby/2.7.0/bin/ # For mailcatcher

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
