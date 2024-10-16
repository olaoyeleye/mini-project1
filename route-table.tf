resource "aws_route_table" "rt-1" {
  vpc_id = aws_vpc.mini_project_vpc.id

  route {
    cidr_block = "0.0.0.0/0" 
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "rt-1"
    
  }
}

resource "aws_route_table" "rt-2" {
  vpc_id = aws_vpc.mini_project_vpc.id

  tags = {
    Name = "rt-2"
  }
}
 