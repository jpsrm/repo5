provider "aws" {
  region = "ap-south-1"
}
resource "aws_s3_bucket" "b" {
  bucket = "my-teraform-test-bucketnew"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}