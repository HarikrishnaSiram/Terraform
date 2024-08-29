resource "aws_autoscaling_group" "twO" {
  name                 = "my-asg"
  launch_configuration = aws_launch_configuration.one.name
  min_size             = 2
  max_size             = 4
  desired_capacity     = 3
  health_check_type    = "EC2"
  load_balancers       = [aws_elb.myelb.name]
  vpc_zone_identifier  = [aws_subnet.mysubnet1.id, aws_subnet.mysubnet2.id]
}
