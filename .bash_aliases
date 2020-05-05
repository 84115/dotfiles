# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

xline () {
    sed -n "$1p" | xclip
}

alias x='clear'
alias reload='source ~/.bashrc'
alias xclip="xclip -selection c"
alias pyclip="python ~/github/pyclip/pyclip.py"
alias untar="tar -xvzf"

alias tips="echo 'Search Dir: grep -Ril \"string\" *
Copy Text: xclip
Copy Line Number: xline 1
Git Misc: git alias'"
