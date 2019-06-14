#!/usr/bin/env bash

__COMMENTS__='
# OS: ubuntu 14.04 trusty
# daliy check for the magic of kura chan in magic.moe.lu which is own by Sanzenin Kura (三千院の暗)
# its a simple demo with one line command,
# need "auth_email" "auth_passwd" variable in env.
'

cookies=`mktemp -t kura-XXX.cookies`
kura_domain='https://xn--nwwv50h.xn--yety8v.com'

login=$(
    curl -s -c "${cookies}" -b "${cookies}" "${kura_domain}/auth/login" \
        --data-urlencode "email=${auth_email}" \
        --data-urlencode "passwd=${auth_passwd}"
)

echo "login:"
echo -e "$login"

# checkin response schema
# {"msg":"\u83b7\u5f97\u4e86 500 MB\u6d41\u91cf.","ret":1}
checkin="`curl -s -c "${cookies}" -b "${cookies}" -X POST "${kura_domain}/user/checkin"`"

echo "checkin"
echo -e "$checkin"
