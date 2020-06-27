#------------------------------------------------------------
# if running bash
#------------------------------------------------------------
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

#------------------------------------------------------------
# set PATH so it includes user's private bin if it exists
#------------------------------------------------------------
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#------------------------------------------------------------
# set PATH so it includes user's private bin if it exists
#------------------------------------------------------------
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
