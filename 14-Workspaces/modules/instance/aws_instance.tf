resource "aws_instance" "foo" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.foo.id
  }

  tags = {
    Name = local.instance_name
    Environment = var.env
  }
}
