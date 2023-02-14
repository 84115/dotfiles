#!/bin/bash

url=`/home/james/bin/spotify-cli art`

firstString="feh --bg-tile $url"
secondString="https://i.scdn.co/image/"
replacement="https://open.spotify.com/image/"

command="${firstString/$replacement/"$secondString"}"

pkill -9 compton

eval $command

echo $command

