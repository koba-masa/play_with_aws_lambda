# LocalStackを使用して、AWS Lambdaの開発を行う

## Ruby

### Lambda関数の更新
```sh
sh ruby/update_lambda.sh
```

### 実行
```sh
docker-compose exec localstack awslocal lambda invoke --function-name localstack-lambda-ruby /tmp/docker_files/output.txt 
```
