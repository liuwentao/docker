#!/usr/bin/env sh
PUID=${PUID:-911}
PGID=${PGID:-911}
groupmod -o -g "$PGID" abc
usermod -o -u "$PUID" abc
echo "
User uid:    $(id -u abc)
User gid:    $(id -g abc)
-------------------------------------
"

groupmod -o -g "$PGID" abc
usermod -o -u "$PUID" abc

chown abc:abc /app
fava -version
fava --host 0.0.0.0 $BEANCOUNT_FILE