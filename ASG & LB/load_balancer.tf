resource "aws_elb" "myelb" {
  name               = "my-lb"
  security_groups    = [aws_security_group.mysg.id]
  availability_zones = [aws_subnet.mysubnet1.availability_zone, aws_subnet.mysubnet2.availability_zone]

  listener {
    instance_port     = 80
    instance_protocol = "HTTP" # Changed to uppercase
    lb_port           = 80
    lb_protocol       = "HTTP" # Changed to uppercase
  }

  tags = {
    Name = "terraform-lb"
  }
}
