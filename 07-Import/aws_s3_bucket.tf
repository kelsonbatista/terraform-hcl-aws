resource "aws_s3_bucket" "my-new-bucket-kfox" {
  bucket = "my-bucket-kelson" # esse seria um bucket ja criado e quero importar

  tags = {
    Environment = "dev"
  }
}
