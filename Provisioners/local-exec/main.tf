provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-02c21308fed24a8ab"
  instance_type = "t2.micro"
  tags = {
    Name = "my-instance"
  }
  provisioner "local-exec" {
    command = "echo 'This instance ID is ${aws_instance.one.id}' >> instance.txt"
  }
}
