#!/bin/bash

function_arn=$1
modified_date=$2
cat <<EOT
{
  "RequestType": "Delete",
  "ServiceToken": "$function_arn",
  "ResponseURL": "https://cloudformation-custom-resource-response-euwest1.s3-eu-west-1.amazonaws.com/arn%3Aaws%3Acloudformation%3Aeu-west-1%3A143044406720%3Astack/test-route53-stack/22b48750-f4b2-11e4-b550-5067141f4d5d%7CRoute53%7Cafd8d7c5-9376-4013-8b3b-307517b8719e?AWSAccessKeyId=AKIAJ7MCS7PVEUOADEEA&Expires=1431008011&Signature=PzIB%2FPeLtpWutgn7QAgUnEKr%2Fgg%3D",
  "StackId": "arn:aws:cloudformation:eu-west-1:143044406720:stack/test-vpc-stack/22b48750-f4b2-11e4-b550-5067141f4d5d",
  "RequestId": "afd8d7c5-9376-4013-8b3b-307517b8719e",
  "LogicalResourceId": "DefaultVpc",
  "PhysicalResourceId": "bdff5044-8ed2-44f1-88dc-91a570b38d19",
  "ResourceType": "Custom::KmsKey",
  "ResourceProperties": {
    "ServiceToken": "$function_arn",
    "Description": "testing kmsKey lambda"
  }
}
EOT
