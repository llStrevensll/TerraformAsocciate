provider "aws" {
    region = "us-east-1"
}

module "s3import" {
    source = "./s3-module/"
    bucket = "strevens-test-bucket"
}

#terraform import module.s3import.aws_s3_bucket.b strevens-test-bucket