provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "mykey" {
  key_name   = "mustafa"
  public_key = file("/root/.ssh/id_rsa.pub")
}

resource "aws_instance" "one" {
  key_name      = aws_key_pair.mykey.key_name
  ami           = "ami-02c21308fed24a8ab"
  instance_type = "t2.micro"
  tags = {
    Name = "my-instance"
  }
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("/root/.ssh/id_rsa")
    }
    inline = [
      "echo 'welcome' ",
      "sudo yum install httpd -y",
      "sudo systemctl start httpd"
    ]
  }
}
