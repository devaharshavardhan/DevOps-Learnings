provider "aws" {
  version = "~> 5.0"
  region  = "us-west-2"
}

 resource "aws_s3_bucket" "example" {
  bucket = "demo-terraform-deva-s3-bucket"

  lifecycle {
    prevent_destroy = false
  }
  }
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "terraform-eks-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }
}