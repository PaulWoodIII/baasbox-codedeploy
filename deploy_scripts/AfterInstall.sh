#!/bin/bash
pushd .
cd /home/ec2-user/baasbox
#need the pushd and popd because codedeploy with cd
#will break the wholeagent

popd
