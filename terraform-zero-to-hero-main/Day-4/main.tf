provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example-demo" {
ami_value = "ami-0fc5d935ebf8bc3bc"
instance_type_value = "t2.micro"
subnet_id_value = "subnet-0e490005a4f039843"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "s3-demo-xyz" # change this
}

