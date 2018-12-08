deploy::
	sam package --template-file template.yaml --output-template-file serverless-output.yaml --s3-bucket sumikawa-buildzip
	sam deploy --template-file serverless-output.yaml --stack-name errorenv --capabilities CAPABILITY_IAM
