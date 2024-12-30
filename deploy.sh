#!/usr/bin/env sh

SOURCE=src

DEST=bakumote_lp2_stg_9zc9finwkdwb
if [ $1 == "prod" ]; then
  DEST=bakumote_lp2
fi

lftp -u tsunemi@deaihunter.net sv1342.xserver.jp -e "mirror -R --delete ${SOURCE} ikedayuta.net/public_html/${DEST}; quit"

echo "access to https://ikedayuta.net/${DEST}"
