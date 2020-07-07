resource "aws_s3_bucket" "s3cts" {
  bucket = "s3cts"
  acl    = "private"

  tags = {
    Name        = "s3cts"
    Environment = "sit"
  }
}
