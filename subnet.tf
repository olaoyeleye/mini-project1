resource "aws_subnet" "public-mini-project-1" {
  vpc_id            = aws_vpc.mini_project_vpc.id
  availability_zone = "eu-west-2a"
  cidr_block        = "10.0.0.0/24"

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public-mini-project-2" {
  vpc_id            = aws_vpc.mini_project_vpc.id
  availability_zone = "eu-west-2b"
  cidr_block        = "10.0.1.0/24"

  tags = {
    Name = "public_subnet_2"
  }
}

resource "aws_subnet" "private-mini-project-1" {
  vpc_id            = aws_vpc.mini_project_vpc.id
  availability_zone = "eu-west-2c"
  cidr_block        = "10.0.2.0/24"

  tags = {
    Name = "public_subnet_2"
  }
}