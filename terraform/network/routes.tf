# Public Route Table 

resource "aws_route_table" "public" {

  vpc_id = aws_vpc.main.id

  route {

    cidr_block = "0.0.0.0/0"

    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "public-route-table"
  }
}

# Private Route Table

resource "aws_route_table" "private" {

  vpc_id = aws_vpc.main.id

  route {

    cidr_block = "0.0.0.0/0"

    nat_gateway_id = aws_nat_gateway.main.id
  }

  tags = {
    Name = "private-route-table"
  }
}

# Public Associations Using for_each

resource "aws_route_table_association" "public" {

  for_each = {

    for idx, subnet in aws_subnet.public :
    idx => subnet.id
  }

  subnet_id = each.value

  route_table_id = aws_route_table.public.id
}

# Private Associations Using for_each

resource "aws_route_table_association" "private" {

  for_each = {

    for idx, subnet in aws_subnet.private :
    idx => subnet.id
  }

  subnet_id = each.value

  route_table_id = aws_route_table.private.id
}
