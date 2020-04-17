#!/bin/bash

set -x

PIPELINEBUCKET='s3://dpellerin-pipeline-storage'
ARTIFACTVERSION='0.1.1'
ARTIFACT=s3-$ARTIFACTVERSION.tar.gz

tar -zcvf $ARTIFACT s3.yml
aws s3 cp $ARTIFACT $PIPELINEBUCKET
rm -fr $ARTIFACT
