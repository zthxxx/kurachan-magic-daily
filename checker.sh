#!/usr/bin/env bash

__COMMENTS__='
# OS: ubuntu 14.04 trusty
# daliy check for the magic of kura chan in magic.moe.lu which is own by Sanzenin Kura (ÈýÇ§Ôº¤Î°µ)
# its a simple demo with one line command,
# need "KuraChan_Magic_Cookies" variable in env.
'
echo "In this check you got transfer: $( \
    curl -s -b "${KuraChan_Magic_Cookies}" "https://xn--nwwv50h.xn--yety8v.com/user/_checkin.php" | \
    grep -o -P '(?<=\\u83b7\\u5f97\\u4e86)(.*)(?=\\u6d41\\u91cf)' \
)"

