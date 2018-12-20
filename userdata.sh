#!/bin/bash

sudo apt update -y > /tmp/userdata.log
sudo apt install -y apache2 >> /tmp/userdata.log
