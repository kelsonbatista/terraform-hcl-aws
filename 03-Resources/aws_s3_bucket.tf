resource "aws_s3_bucket" "my-bucket-s3-kelson" {
  bucket = "kelson-bucket"

  tags = {
    Name        = "kelson-bucket"
    Environment = "dev"
  }
}
