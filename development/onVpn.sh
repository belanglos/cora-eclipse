#! /bin/bash

docker network disconnect eclipseForCoraNet eclipse202012forcora4

docker network create tempvpn

docker network connect tempvpn eclipse202012forcora4