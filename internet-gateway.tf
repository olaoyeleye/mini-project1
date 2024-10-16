resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.mini_project_vpc.id

  tags = {
    Name = "gw"
  }
}