resource "aws_instance" "foo" {
  ami           = "ami-0c2b0d3fb02824d92" # Microsoft Windows Server 2022  us-east-1
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  tags = {
    Name = var.ec2_name
  }
}
