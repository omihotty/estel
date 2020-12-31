#!/bin/bash

echo "-" > /tmp/sb1
echo " corelib:" >> /tmp/sb1
find /opt/estel/mcommerce/ -type f -name "*.*" -newermt "$1" -exec ls  {} \; |grep blu_lib_merge  |grep -vE '2020|-backup|_backup|_bkp|-bkp|dbmodule.jar' |awk -F "/" '{print $6}' |sed -e 's/^/  - /g' >> /tmp/sb1


echo "-" >> /tmp/sb1
echo " coreglocm:" >> /tmp/sb1
find /opt/estel/mcommerce/ -type f -name "*.*" -newermt "$1" -exec ls  {} \; |grep core_glocm  |grep -vE 'nohup.out|core.lic|2020|logs' |awk -F "/" '{print $7}' |sed -e 's/^/  - /g' >> /tmp/sb1


echo "-" >> /tmp/sb1
echo " schema:" >> /tmp/sb1
find /opt/estel/mcommerce/ -type f -name "*.*" -newermt "$1" -exec ls  {} \; |grep xsd |grep schema_bluClound |awk -F "/" '{print $6}' |sed -e 's/^/  - /g' >> /tmp/sb1

