resource "aws_subnet" "two" {
  vpc_id = aws_vpc.one.id
  tags = {
    Name = "subnet-1"
  }
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
}
