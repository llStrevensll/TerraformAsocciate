provider "aws" {
    region = "us-east-1"
}


resource "aws_s3_bucket" "b" {
    bucket = "strevens-test-bucket"
    acl = "private"
}

#terraform import aws_s3_bucket.bucket bucket-name