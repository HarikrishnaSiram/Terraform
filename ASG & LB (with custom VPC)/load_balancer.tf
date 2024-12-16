resource "aws_elb" "myelb" {
  name            = "terraform-lb"
  security_groups = [aws_security_group.mysg.id]
  subnets         = [aws_subnet.mysubnet1.id, aws_subnet.mysubnet2.id]
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  tags = {
    Name = "terraform-lb"
  }
}
