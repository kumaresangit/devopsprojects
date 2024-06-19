Installing httpd web server on a centos 7

Introduction
  This document provides a step-by-step guide to installing software packages on a Linux server. For this example, we will install the wget, unzip, and httpd packages on a server running a Red Hat-based distribution (such as CentOS or RHEL).

Prerequisites
  1.Access to a Linux server with sudo privileges.
  2.Internet connectivity on the server to download packages.
  
Step-by-Step Instructions
  Step 1: Update the Package Repository
    Before installing new software, it is a good practice to update the package repository to ensure you are getting the latest versions.
    #sudo yum update -y

  Step 2: Install wget
    wget is a command-line utility for downloading files from the web.
    #sudo yum install wget -y

  Step 3: Install unzip
    unzip is a utility used for extracting compressed files.
    #sudo yum install unzip -y
    
  Step 4: Install httpd
    httpd is the Apache HTTP Server, one of the most widely used web server software.
    #sudo yum install httpd -y

  Step 5: Start and Enable httpd Service
    After installing httpd, you need to start the service and enable it to start on boot.
    #sudo systemctl start httpd
    #sudo systemctl enable httpd

  Step 6: Verify Installation
    To verify that the installation was successful, you can check the status of the httpd service.
    #sudo systemctl status httpd
    You should see output indicating that the httpd service is active and running.

Example: Deploying a Sample Web Application
  Step 1: Create a Temporary Directory
    Create a temporary directory to store the downloaded files.
    #mkdir -p /tmp/webfile
    #cd /tmp/webfile

  Step 2: Download the Project Artifact
    Download the sample web application artifact.
    #wget https://www.tooplate.com/zip-templates/2098_health.zip

  Step 3: Extract the Artifact
    Unzip the downloaded file.
    #unzip 2098_health.zip

  Step 4: Deploy the Artifact
    Copy the extracted files to the web server's root directory.
    #sudo cp -r 2098_health/* /var/www/html/.

  Step 5: Restart the Web Service
    Restart the httpd service to apply changes.
    #sudo systemctl restart httpd

  Step 6: Clean Up
    Remove the temporary directory.
    #rm -rf /tmp/webfile

Conclusion
  You have successfully installed wget, unzip, and httpd on your Linux server, and deployed a sample web application. The server is now configured to serve web content.
