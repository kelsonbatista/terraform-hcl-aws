resource "aws_s3_bucket" "second-bucket-kfox" {
  bucket = "my-bucket-kelson"

  tags = {
    Environment = "dev"
  }
}
