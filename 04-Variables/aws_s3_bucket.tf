resource "aws_s3_bucket" "my-bucket-s3-kelson" {
  bucket = var.name

  tags = {
    Name        = var.name
    Environment = var.env
  }
}
