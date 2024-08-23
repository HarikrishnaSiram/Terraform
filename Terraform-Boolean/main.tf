provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  tags = {
    Name = "instance1"
  }
  count = var.abc ? 2 : 1
}

variable "abc" {
  type    = bool
  default = true
}
