provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  tags = {
    Name = "my-in"
  }
  vpc_security_group_ids = [aws_security_group.three.id]
}
