#! /bin/bash

USER=$1
DOCKERGROUPID=$2

if [ ! $USER ]; then
  	echo you must specify the userName to be used when building eclipseforcoraoxygen
elif [ ! $DOCKERGROUPID ]; then
	echo you must specify the dockergroupid to be used when building eclipseforcoraoxygen
else
	#for possibly newer version of from: X
	#docker build --pull --build-arg user=$USER dockergroupid=$DOCKERGROUPID -t eclipseforcoraoxygen1 cora-eclipse/docker/
	docker build --build-arg user=$USER dockergroupid=$DOCKERGROUPID -t eclipseforcoraoxygen1 cora-eclipse/docker/#docker build --build-arg user=$USER -t eclipseforcoraoxygen2 cora-eclipse/docker/
	#cd cora-eclipse/docker/
	#docker-compose build --build-arg user=$USER eclipseforcoraoxygen2
	#docker-compose build --no-cache --build-arg user=$USER eclipseforcoraoxygen2
fi
