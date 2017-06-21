#!/bin/sh
set -e

FILE="/usr/local/nginx/conf/mime.types"
count=`ls /usr/local/nginx/conf | wc -l`
echo `ls /usr/local/nginx/conf`
echo "+++++++++++++"
echo `ls /mnt/conf`
if [[ "$count" = "0" ]];then
	echo 'the nginx conf is empty!'
	mv /mnt/conf/* /usr/local/nginx/conf/	
	rm -rf /mnt/conf
fi

if [[ ! -f "$FILE" ]];then
	cp -rf /mnt/conf/* /usr/local/nginx/conf/
	echo `ls /usr/local/nginx/conf`
	rm -rf /mnt/conf
fi
exec /usr/local/nginx/sbin/nginx -g "daemon off;"
