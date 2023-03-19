resource "aws_db_subnet_group" "db_sg" {
  name = format("%s_db_sg", local.prefix_name)
  description = "DB subnet for ${var.service}"
  subnet_ids = var.subnet_ids

  tags = merge(
    local.common_tags,
    {
      # key = value
    }
  )
}