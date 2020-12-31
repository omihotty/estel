#!/bin/bash
sleep 5;
rm -rf /usr/jboss-as-7.1.1.Final/node_web_admin/standalone/deployments/MerchantManagementPortal.war.deployed
sleep 30;
rm -rf /usr/jboss-as-7.1.1.Final/node_web_admin/standalone/deployments/MerchantManagementPortal.war.undeployed
sleep 30;
rm -rf /usr/jboss-as-7.1.1.Final/node_web_admin/standalone/deployments/MerchantManagementPortal.war.failed

sleep 30;

ls /usr/jboss-as-7.1.1.Final/node_web_admin/standalone/deployments/MerchantManagementPortal.war.deployed  > /dev/null 2>&1
if [ $? -eq 0 ] ; 
then
exit 0;
else
exit 1;
fi

