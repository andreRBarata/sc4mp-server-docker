#!/usr/bin/env sh

/serverconfig.sh > /server/_SC4MP/serverconfig.ini


if [ ! -n "${VERSION}" ]; then
  VERSION=$(wget -O - https://api.github.com/repos/kegsmr/sc4mp-server/releases/latest | jq -r '.tag_name[1:]')
  if [ "${VERSION}" = "0.3.0" ]; then
	VERSION="0.3.2"
  fi
fi


if [ ! -f "releases/v${VERSION}" ]; then
  rm -r ./releases && mkdir ./releases
  wget -P releases https://github.com/kegsmr/sc4mp-server/archive/refs/tags/v$VERSION.zip
  unzip ./releases/v$VERSION.zip -d ./src
  
  if [ ! -d "resources" ]; then
    mv ./src/sc4mp-server-$VERSION/resources .
  else
    rm -r ./src/sc4mp-server-$VERSION/resources
  fi
  
  mv -f ./src/sc4mp-server-$VERSION/* .
  rm -r ./src
fi


python /server/sc4mpserver.py
