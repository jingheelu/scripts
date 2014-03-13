# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#alias
alias makeoc='make -j4 cme cfe ice'
alias tree='ls -R | grep ":$" | sed -e '"'"'s/:$//'"'"' -e '"'"'s/[^-][^\/]*\//--/g'"'"' -e '"'"'s/^/   /'"'"' -e '"'"'s/-/|/'"'"

# User specific aliases and functions
export PATH=$PATH:~/scripts:.

# Solve missing crti.o issue
export LIBRARY_PATH=$LIBRARY_PATH:/usr/lib/x86_64-linux-gnu

# Java location for debesys builds
export JAVA_HOME=/usr/java/jdk1.7.0_17

GIT_PS1_SHOWDIRTYSTATE=true
. ~/.git-prompt.sh
. ~/.git-completion.sh

# Original prompt
#export PS1="[\u@\h \w]\$ "

# Prompt with git branch
export PS1="[\u@\h \$(__git_ps1) \w]\$ "
#export PS1="[\u@\h \[\033[1;30m\]\$(__git_ps1)\[\033[0;0m\] \w]\$ "
# \[\033[1;34m\] Start color dark grey.
# \[\033[0;0m\]  Stop color.
