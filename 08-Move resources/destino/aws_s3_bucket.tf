resource "aws_s3_bucket" "my-new-bucket-kfox" {
  bucket = "my-bucket-kelson"

  tags = {
    Environment = "dev"
  }
}
