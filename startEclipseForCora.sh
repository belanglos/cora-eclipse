#! /bin/bash

USER=$1
BASEDIR=$(dirname $BASH_SOURCE)


if [ ! $USER ]; then
  	echo "You must specify the userName used when building eclipseforcora2"
else
	docker run --rm -ti --privileged --ipc=host --env="QT_X11_NO_MITSHM=1"  -e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v INSTALLDIR/workspace:/home/$USER/workspace \
	-v INSTALLDIR/eclipse:/home/$USER/eclipse \
	-v INSTALLDIR/.eclipse:/home/$USER/.eclipse \
	-v INSTALLDIR/m2:/home/$USER/.m2 \
	-v PARENTDIR/eclipseP2:/home/$USER/.p2 \
	-v PARENTDIR/.gitconfig:/home/$USER/.gitconfig \
	--env user=$USER -p 8080:8080 -p 9876:9876 -p 8090:8090 --name eclipseforcora2 eclipseforcora2 $2
fi
