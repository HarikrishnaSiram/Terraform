resource "aws_launch_configuration" "one" {
  image_id        = "ami-02c21308fed24a8ab"
  instance_type   = "t2.micro"
  key_name        = "KeyPair"
  security_groups = [aws_security_group.mysg.id]
}
