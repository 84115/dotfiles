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

alias ns-docker="sudo docker-compose down && sudo docker-compose build --no-cache php && sudo docker-compose up"
alias ns-ngrok="ngrok http api-public.sequencer.test:8080"

alias ns-referrey-ssh-test="ssh forge@46.101.62.134"
alias ns-referrey-ssh-prod="ssh forge@159.65.16.187"

xline () {
    sed -n "$1p" | xclip
}

digitalocean_ip="178.62.125.126"
alias digitalocean="ssh -p 22 root@${digitalocean_ip}"

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

alias sync--mixer="rsync -a --chown=www-data:www-data --verbose --progress --stats --compress /home/james/Dev/mixer/* root@178.62.125.126:/var/www/html"

alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
