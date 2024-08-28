resource "aws_internet_gateway" "three" {
  tags = {
    Name = "tf-igw"
  }
  vpc_id = aws_vpc.one.id
}


resource "aws_route_table_association" "two" {
  subnet_id      = aws_subnet.two.id
  route_table_id = aws_route_table.four.id
}
