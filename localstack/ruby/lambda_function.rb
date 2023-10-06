# frozen_string_literal: true

require 'json'
require 'aws-sdk-s3'

def lambda_handler(event:, context:)
  { results: JSON.generate(client.list_objects_v2({ bucket: 'sample.bucket', prefix: 'sample' }).contents) }
end

def client
  @client ||= Aws::S3::Client.new({region: 'ap-northeast-1', credentials: credentials, endpoint: 'http://localstack:4566', force_path_style: true})
end

def credentials
  Aws::Credentials.new('access_key_id', 'secret_access_key')
end

puts handler(event: {}, context: {})
