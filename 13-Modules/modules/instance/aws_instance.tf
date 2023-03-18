resource "aws_instance" "foo" {
  ami           = "ami-0c2b0d3fb02824d92"
  instance_type = "t2.micro"

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.foo.id
  }

  tags = {
    Name = var.ec2_name
    Environment = var.env
  }
}
