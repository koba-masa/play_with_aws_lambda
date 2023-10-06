#!/bin/bash

awslocal s3 mb s3://sample.bucket
touch example.txt
awslocal s3 cp sample.txt s3://sample.bucket/sample
