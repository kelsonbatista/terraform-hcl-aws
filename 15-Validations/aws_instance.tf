resource "aws_instance" "foo" {
  ami           = var.image_id
  instance_type = "t2.micro"
  #associate_public_ip_address = true

  lifecycle {
    # The AMI ID must refer to an AMI that contains an operating system
    # for the `x86_64` architecture.
    precondition {
      condition     = data.aws_ami.example.architecture == "x86_64"
      error_message = "The selected AMI must be for the x86_64 architecture."
    }

    # The EC2 instance must be allocated a public DNS hostname.
    postcondition {
      condition     = self.public_ip != ""
      error_message = "EC2 instance must be in a VPC that has public DNS hostnames enabled."
    }
  }

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.foo.id
  }

  tags = {
    # Name = local.instance_name
    Environment = var.env
  }
}
