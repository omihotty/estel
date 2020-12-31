#!/bin/bash
source /opt/estel/scripts/setenv
outpt=`bluengine -l |grep glocm |awk '{print $2}'`
if [ $outpt == ONLINE ] ; 
then
exit 0;
else
exit 1;
fi
