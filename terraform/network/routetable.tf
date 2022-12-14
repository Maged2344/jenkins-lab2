resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "public route table"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet_public1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet_public2.id
  route_table_id = aws_route_table.public.id
}