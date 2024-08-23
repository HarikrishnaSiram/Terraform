provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
}

provider "aws" {
  region = "ap-south-1"
  alias  = "mumbai"
}

resource "aws_instance" "two" {
  provider      = aws.mumbai
  ami           = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
}
~  
