export NVIMRC_DIR=$(dirname $SCRIPT_DIR)
export PATH=$NVIMRC_DIR/bin:$PATH

[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u
