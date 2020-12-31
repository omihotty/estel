#!/bin/bash
source /opt/estel/scripts/setenv

openussdengine -d glo
sleep 5;
openussdengine -d glo
sleep 5;
openussdengine -d glo
sleep 5;
openussdengine -d glo
sleep 5;
openussdengine -d glo
sleep 5;
openussdengine -s glo
sleep 10;

outpt=`openussdengine -l |grep glo |awk '{print $2}'`
if [ $outpt == ONLINE ] ; 
then
exit 0;
else
exit 1;
fi
