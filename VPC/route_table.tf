resource "aws_route_table" "four" {
  tags = {
    Name = "tf-rt"
  }
  vpc_id = aws_vpc.one.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.three.id
  }
}
