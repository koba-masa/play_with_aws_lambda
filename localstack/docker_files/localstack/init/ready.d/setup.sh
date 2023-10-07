#!/bin/bash

awslocal s3 mb s3://sample.bucket
touch example.txt
awslocal s3 cp example.txt s3://sample.bucket/sample

awslocal lambda create-function \
    --function-name localstack-lambda-ruby \
    --runtime ruby3.2 \
    --zip-file fileb:///tmp/docker_files/ruby_initializa.zip \
    --handler lambda_function.lambda_handler \
    --role arn:aws:iam::000000000000:role/lambda-role
