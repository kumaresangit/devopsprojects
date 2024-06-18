#!/bin/bash

###############################
#Auther= Kumaresan G

################################

set -o

###Installing required packages####
sudo yum install wget unzip httpd -y &> /dev/null

sudo systemctl start httpd
sudo systemctl enable httpd

###Creating Directory for stoing the artifacts#########
sudo mkdir -p /tmp/webfile
sudo cd /tmp/webfile

###Downloading the project artifact##########
sudo wget https://www.tooplate.com/zip-templates/2098_health.zip


echo "Unzip the artifact"
sudo unzip 2098_health.zip

echo "Copy the artifact to the /var/www/html directory"
sudo cp -r 2098_health/* /var/www/html/.

echo "restarting the web service"
sudo systemctl restart httpd

echo "Removing the temp directory"
rm -rf /tmp/webfile

