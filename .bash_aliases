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

alias artisan='php artisan'
alias kanban='taskell'
alias x='clear'
alias reload='source ~/.bashrc'
alias xclip="xclip -selection c"

alias hgrep="history | grep"
alias fgrep="reload && grep -rnw $(pwd) -e"

alias weather="clear && curl wttr.in"

alias feh="feh --geometry 690x690"

alias ext="cd /media/james/504D8EF2670256F7/"

alias phpma="php -S 127.0.0.1:8001 -t ~/Freelance/phpma"

alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
