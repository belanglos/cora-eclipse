#! /bin/bash

firstRun(){
	git clone https://github.com/olovm/cora-eclipse.git ~/workspace/cora-eclipse
	
	chmod +x ~/workspace/cora-eclipse/docker/setupProjects.sh
	~/workspace/cora-eclipse/docker/setupProjects.sh
	
	cd ~/workspace/cora-jsclient/
	npm install karma karma-chrome-launcher karma-firefox-launcher karma-qunit karma-coverage karma-html-reporter --save-dev
	
	#SWT_GTK3=0  ~/eclipse-installer/eclipse-inst
	~/eclipse-installer/eclipse-inst
}

export SWT_GTK3=0

if [ ! -d "~/workspace/cora-jsclient" ]; then
  	firstRun
else
	~/eclipse/eclipseforcora/eclipse
fi