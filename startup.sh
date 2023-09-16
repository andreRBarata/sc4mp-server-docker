#!/usr/bin/env sh

if [ ! -f "serverconfig.ini"] || [ "${CONFIG_AUTO_UPDATE}" = "True" ]; then
  /serverconfig.sh > /server/_SC4MP/serverconfig.ini
fi

if [ "${AUTO_UPDATE}" = "True" ] || [ ! -f "sc4mpserver.py" ]; then
  sh -c "./update.sh"
fi

python sc4mpserver.py
