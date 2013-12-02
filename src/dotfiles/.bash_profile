

# bash settings
shopt -s histappend
PROMPT_COMMAND='history -n;history -a'
HISTSIZE=100000
HISTFILESIZE=100000
HISTTIMEFORMAT="%FT%T "

export EDITOR=vi

# ues GNU readline library - command line editing, etc
set -o vi

# perlbrew setup
source ~/perl5/perlbrew/etc/bashrc


# call the ~/.bashrc
source ~/.bashrc
