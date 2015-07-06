#!/bin/bash
pushd .
cd /home/ec2-user
rm -rf archive 2>/dev/null
mkdir baasbox 2>/dev/null
mv baasbox archive 2>/dev/null
popd
