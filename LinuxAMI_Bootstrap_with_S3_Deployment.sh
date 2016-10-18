#!/bin/bash
yum install httpd -y
yum update -y
aws s3 cp s3://YourBucketNameHere/index.html /var/www/html/ --recurisve #use --recursive to sync the entire contents of the file 
service httpd start
chkconfig httpd on