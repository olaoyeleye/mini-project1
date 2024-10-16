resource "aws_route_table_association" "ra-1" {
  subnet_id      = aws_subnet.public-mini-project-1.id
  route_table_id = aws_route_table.rt-1.id
}

resource "aws_route_table_association" "ra-2" {
  subnet_id      = aws_subnet.public-mini-project-2.id
  route_table_id = aws_route_table.rt-1.id
}

resource "aws_route_table_association" "ra-3" {
  subnet_id      = aws_subnet.private-mini-project-1.id
  route_table_id = aws_route_table.rt-2.id

} 