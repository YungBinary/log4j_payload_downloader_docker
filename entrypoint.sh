#!/usr/bin/env bash

cd /opt/log4j_payload_downloader

echo -n "Please enter the addresses in comma separated format, i.e. ldap://x,ldap://y,ldap://z: "
read addresses

for address in $(echo $addresses | sed "s/,/ /g")
do
    echo "Running log4j_payload_downloader against $address"
    ./l4jdl $address
    echo
done
