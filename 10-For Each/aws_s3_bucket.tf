resource "aws_s3_bucket" "second-bucket-kfox" {
  for_each = toset(var.buckets)
  bucket = each.key
  
  tags = {
    Environment = "dev"
  }
}
