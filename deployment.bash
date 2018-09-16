#!/bin/bash

ssh ec2-user@ec2-18-217-11-200.us-east-2.compute.amazonaws.com "rm -r /var/www/webdevcoop.com/public_html/*"

scp -r ~/Desktop/sitio_cooperativo/webdevcoop/* ec2-user@ec2-18-217-11-200.us-east-2.compute.amazonaws.com:/var/www/webdevcoop.com/public_html

if [ $? -eq 0 ]
then
	echo "
		-- DEPLOYMENT SUCCESS --
	"
else
	echo "
		-- DEPLOYMENT FAIL =( --
	"
fi
