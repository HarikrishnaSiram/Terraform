provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  tags          = var.abc
}

variable "abc" {
  type = map(string)
  default = {
    Name = "instance2"
    env  = "dev"
  }
}

output "two" {
  value = [aws_instance.one.public_ip, aws_instance.one.private_ip]
}
