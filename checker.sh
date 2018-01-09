#!/usr/bin/env bash

__COMMENTS__='
# OS: ubuntu 14.04 trusty
# daliy check for the magic of kura chan in magic.moe.lu which is own by Sanzenin Kura (ÈýÇ§Ôº¤Î°µ)
# its a simple demo with one line command,
# need "KuraChan_Magic_Cookies" variable in env.
'

echo $(curl -s -b "${KuraChan_Magic_Cookies}" "https://xn--nwwv50h.xn--yety8v.com/user/_checkin.php")
