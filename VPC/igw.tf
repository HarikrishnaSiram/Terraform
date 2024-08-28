resource "aws_internet_gateway" "three" {
  tags = {
    Name = "tf-igw"
  }
  vpc_id = aws_vpc.one.id
}


resource "aws_route_table_association" "subnet1" {
subnet_id = aws_subnet.mysubnet1.id
route_table_id = aws_route_table.myrt.id
}
