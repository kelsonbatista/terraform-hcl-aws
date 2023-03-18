resource "aws_network_interface" "foo" {
  subnet_id = var.subnet_id
  # aws_subnet.my_subnet.id
  # var.subnet_id
  private_ips = ["172.16.10.100"]

  tags = {
    # Name = var.network_interface
    Environment = var.env
  }
}
