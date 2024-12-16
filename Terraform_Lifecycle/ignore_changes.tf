provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-02c21308fed24a8ab"
  instance_type = "t2.micro"
  tags = {
    Name = "my-instance1"
  }
  lifecycle {
    ignore_changes = [tags, ami]
  }
}
