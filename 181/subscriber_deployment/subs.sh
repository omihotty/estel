#!/bin/bash
sleep 5;
rm -rf /usr/jboss-as-7.1.1.Final/standalone/deployments/SubscriberManagementPortal.war.deployed
sleep 30;
rm -rf /usr/jboss-as-7.1.1.Final/standalone/deployments/SubscriberManagementPortal.war.undeployed
sleep 30;
rm -rf /usr/jboss-as-7.1.1.Final/standalone/deployments/SubscriberManagementPortal.war.failed
sleep 30;

ls /usr/jboss-as-7.1.1.Final/standalone/deployments/SubscriberManagementPortal.war.deployed  > /dev/null 2>&1
if [ $? -eq 0 ] ; 
then
exit 0;
else
exit 1;
fi


