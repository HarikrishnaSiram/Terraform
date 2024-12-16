resource "aws_instance" "one" {
  ami           = var.ami_id
  instance_type = var.itype
  tags = {
    Name = "my-instance"
    env  = "dev"
  }
  availability_zone = var.azone
  key_name          = var.mykey
  count             = var.no_of_instances
}
