variable "aws_region" {
  description = "AWS region"

  type = object({
    dev = string
    prd = string
  })

  default = {
    dev = "us-east-1"
    prd = "us-east-1"
  }
}