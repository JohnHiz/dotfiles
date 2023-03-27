#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -hla --color=auto'
alias grep='grep --color=auto'
alias vi='nvim'

# Show aliases and bash functions when invoking `which`.
function which()
{
    (alias; declare -f) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot "$@"
}

# ### PS1 ###
PS1='\u:\e[35m\w\e[0m\e[32m>\e[0m '

# Show all used env.source files for current directory.
alias pe='P=$(pwd); while : ; do E="$P/env.source"; if test -f "$E"; then echo $E; fi; [[ $P != "/" ]] || break; P=$(dirname "$P"); done'

# Reconfigure cdeh.
function resource()
{
    __cdeh_rebuild_source_dirs;
    rm -f "$CDEH_TMP/envfiles";
    __cdeh_rebuild_envfiles;
    export CDEH_ENVFILES=$(cat "$CDEH_TMP/envfiles");
    __cdeh_resource
}

#CDEH_VERBOSE=1                 # Set this to get more stuff printed.
HISTSIZE=1200                   # Example, the default is 1000.
CDEH_ROOT=/opt/projects/cdeh    # Or define this globally.
source $CDEH_ROOT/env.bashrc

