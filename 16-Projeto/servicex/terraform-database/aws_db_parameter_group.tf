resource "aws_db_parameter_group" "default" {
  name = format("%s-%s", local.prefix_db_name, var.engine)
  family = lookup(var.db_info, var.engine)["family"]

  dynamic "parameter" {
    for_each = lookup(var.db_parameter_group, var.engine)

    content {
      name = parameter.value.name
      value = parameter.value.value
      apply_method = parameter.value.apply_method
    }
  }

  tags = merge(
    local.common_tags,
    {
      # key = value
    }
  )
}