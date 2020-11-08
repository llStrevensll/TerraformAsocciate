provider "aws" {
    region = "us-east-1"
}

module "import_instance" {
    source = "./ec2-module/"
}

#terraform import module.import_instance.aws_instance.example  i-0778c3d08729153c5