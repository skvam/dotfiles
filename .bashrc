# export PS1="\[\e[33m\]\u\[\e[m\]\[\e[37;40m\]@\[\e[m\]\[\e[36m\]\w\[\e[m\] "
export PS1="\e[0;91m\d \t \[\033[0;32m\]\u@\h:\e[0;93m\w \e[0;93m$ \e[m" 
# \e[m

alias piggydev='tmux new-session \; split-window -h \; split-window -v \; resize-pane -x 132 -y 43 \; send-keys "cd ~/367sp17/piggy/" C-m'

# check window size after each command; if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# enable color support of ls and add handy aliases
if [ -x /usr/vin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls = 'ls --color=auto'
	alias grep = 'grep --color=auto'
	alias fgrep = 'fgrep --color=auto'
	alias egrep = 'egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -la -t -CF'
# trying to add l='ls -la -Rt' to list sorted by date
# none of these were working at all tho 8-2-17

alias emacs='emacs -nw'
