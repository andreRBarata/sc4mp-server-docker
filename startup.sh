#!/usr/bin/env sh

/serverconfig.sh > /server/_SC4MP/serverconfig.ini
python /server/sc4mpserver.py
