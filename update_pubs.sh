#!/bin/sh

#shell script to pull the latest CSV file from github and automatically convert it to geoJSON

cd ~cos/public_html/

if [ "-d" "aber-pubs" ] ; then
	cd aber-pubs
	git pull
else 
	git clone git@github.com:colinsauze/aber-pubs.git 
	cd aber-pubs
fi

bash ./csvtogeojson.sh aberpubs.csv aberpubs.geojson
git add aberpubs.geojson
git commit -m "automated update" 
git push
cd ..
chmod 755 aber-pubs
chmod 644 aber-pubs/*

