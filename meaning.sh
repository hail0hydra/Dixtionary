#!/usr/bin/bash


# Author: s1ck


if [ $# -lt 1 ]; then
    echo "Usage: ./$0 {word}"
    exit 1
fi




#pronunciation

aud=`curl --silent https://api.dictionaryapi.dev/api/v2/entries/en/$1 | jq .[].'phonetics'.[].'audio' | grep us`
c=${aud//\"/} # removing "" from link, dunno why mpv bugs with it :(
c=$(echo "$c" | head -n 1 | sed 's/.*\(https?:\/\/[^ ]*\).*/\1/') # if we get multiple links, we just want to play only one ;)
echo $c

if [ ! -z "$c" ]; then
    mpv  $c 1>/dev/null
else
    echo $1 🤓 $1
fi

echo


# meaning

curl --silent https://api.dictionaryapi.dev/api/v2/entries/en/$1 | jq '.[] | .meanings' | jq .[].definitions.[].definition





