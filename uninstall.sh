#!/bin/sh
echo "software to uninstall"
read sw
sudo service $sw stop
sudo yum remove $sw
