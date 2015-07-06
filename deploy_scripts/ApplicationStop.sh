#!/bin/bash
pushd .
cd /home/ec2-user/baasbox
env PATH=$PATH:/home/ec2-user/.nvm/v0.10.35/bin pm2 stop app.js
popd
