resource "aws_s3_bucket" "second-bucket-kfox" {
  count = 4
  bucket = "my-bucket-kelson-${count.index}"
  
  tags = {
    Environment = "dev"
  }
}
