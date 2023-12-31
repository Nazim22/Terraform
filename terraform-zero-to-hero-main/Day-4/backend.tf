terraform {
  backend "s3" {
    bucket         = "s3-demo-xyz" # change this
    key            = "s3demo/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
