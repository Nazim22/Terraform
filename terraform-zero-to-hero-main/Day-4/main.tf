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

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
