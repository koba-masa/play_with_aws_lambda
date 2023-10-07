#!/bin/sh
zip_file=docker_files/localstack/tmp/lambda_function.zip
docker_zip_file=/tmp/docker_files/lambda_function.zip
zip -j ${zip_file} ruby/lambda_function.rb
docker-compose exec localstack awslocal lambda update-function-code --function-name localstack-lambda-ruby --zip-file fileb://${docker_zip_file} --endpoint-url=http://localhost:4566
rm ${zip_file}
