#!/bin/sh
#

if [ ! "$(docker ps -qaf name=NDRD)" ]; then
	docker run -d --name=NDRD -p8334:8334 zergity/ndrd:mvp
else
	docker start NDRD
fi

sleep 2

if [ ! "$(docker ps -qaf name=NDRW)" ]; then
	IP=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' NDRD`
	echo $IP
	docker run -d --name=NDRW -p8332:8332 -e ip=$IP zergity/ndrw:mvp
else
	docker start NDRW
fi
