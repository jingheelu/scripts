# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#alias
alias dmake='make -r -R -j8 --quiet -C$HOME/dev-root/debesys show_progress=1'
alias gg='~/dev-root/debesys/ext/linux/x86-64/release/opt/gcc-4.8.1/bin/g++'
alias la='ls -l --color=auto'
alias reb='cd ~/run-root/debesys'
alias mc='make -j4 cme cfe ice espeed eurex eris_govex getdirect eex eurex_otc'
alias mo='make -j4 cme cfe ice espeed eurex eris_govex getdirect eex eurex_otc config=release'
alias mt='make -j4 pyrate test/t_trader'
alias tree='ls -R | grep ":$" | sed -e '"'"'s/:$//'"'"' -e '"'"'s/[^-][^\/]*\//--/g'"'"' -e '"'"'s/^/   /'"'"' -e '"'"'s/-/|/'"'"
alias deb='cd ~/dev-root/debesys'

# User specific aliases and functions
export PATH=$PATH:~/scripts:.

# Solve missing crti.o issue
export LIBRARY_PATH=$LIBRARY_PATH:/usr/lib/x86_64-linux-gnu

# Java location for debesys builds
export JAVA_HOME=/usr/java/jdk1.7.0_17

# Misc. env vars (chef)
export EDITOR=vim

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

#export DISPLAY=localhost:0.0
export JENKINS_USER=jin-ghee.lu@tradingtechnologies.com
export JENKINS_TOKEN=cd8797d43ed1b16cd504620bcb342406
export QPID_SSL_CERT_DB=/etc/debesys/cert_dir

