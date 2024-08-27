resource "aws_internet_gateway" "three" {
  tags = {
    Name = "tf-igw"
  }
  vpc_id = aws_vpc.one.id
}
