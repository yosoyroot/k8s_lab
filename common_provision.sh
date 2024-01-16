#!/bin/bash
apt-get update -y
ufw disable
sleep 5

#All access if fw is enabled
# ufw allow 6443/tcp #apiserver
# ufw allow from 10.42.0.0/16 to any #pods
# ufw allow from 10.43.0.0/16 to any #services
