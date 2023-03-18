resource "aws_s3_bucket" "bucket-kfox01" {
  bucket = "${local.prefix_bucket}-bucket-kfox01"
  
  tags = {
    Environment = "dev"
  }
}

resource "aws_s3_bucket" "bucket-kfox02" {
  bucket = "${local.prefix_bucket}-bucket-kfox02"
  
  tags = {
    Environment = "dev"
  }
}
