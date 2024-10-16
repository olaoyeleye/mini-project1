resource "aws_network_acl_association" "kensko-nacl-association" {
  network_acl_id = aws_network_acl.kensko-nacl.id
  subnet_id     = aws_subnet.public-mini-project-1.id
}

resource "aws_network_acl_association" "kensko-nacl-association-2" {
  network_acl_id = aws_network_acl.kensko-nacl.id
  subnet_id     = aws_subnet.public-mini-project-2.id
}