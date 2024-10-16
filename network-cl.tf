resource "aws_network_acl" "kensko-nacl" {
  vpc_id = aws_vpc.mini_project_vpc.id

  egress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow" 
    cidr_block = aws_vpc.mini_project_vpc.cidr_block
    from_port  = 443
    to_port    = 443
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = aws_vpc.mini_project_vpc.cidr_block
    from_port  = 80
    to_port    = 80
  }
  ingress {
    protocol   = "tcp"
    rule_no    = 300
    action     = "allow"
    cidr_block = aws_vpc.mini_project_vpc.cidr_block
    from_port  = 22
    to_port    = 22
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 400
    action     = "allow"
    cidr_block = aws_vpc.mini_project_vpc.cidr_block
    from_port  = 443
    to_port    = 443
  }

  tags = {
    Name = "kensko-nacl"
  }
}