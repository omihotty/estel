#!/bin/bash
source /opt/estel/scripts/setenv
sleep 2;
bluengine -d glocm
sleep 5;
bluengine -s glocm
sleep 10;

outpt=`bluengine -l |grep glocm |awk '{print $2}'`
if [ $outpt == ONLINE ] ; 
then
exit 0;
else
exit 1;
fi
