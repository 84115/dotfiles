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

digitalocean_ip="178.62.125.126"
alias digitalocean="ssh -p 22 root@${digitalocean_ip}"

alias x='clear'
alias reload='source ~/.bashrc'
alias xclip="xclip -selection c"

alias hgrep="history | grep"
alias fgrep="reload && grep -rnw $(pwd) -e"

