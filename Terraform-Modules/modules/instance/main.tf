resource "aws_instance" "one" {
  ami           = var.ami_id
  instance_type = var.itype
  tags = {
    Name = var.iname
  }
}
