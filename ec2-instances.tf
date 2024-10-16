resource "aws_instance" "frontend-node-1" {
  ami           = var.ami
  key_name      = var.key_name
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public-mini-project-1.id
  associate_public_ip_address=true
  user_data                   = file("./frontend.sh")
  vpc_security_group_ids = [aws_security_group.sg-frontend.id]
  depends_on = [aws_internet_gateway.gw]
  tags = {
    Name = var.ec2_key_name-1
  }
}


resource "aws_instance" "backend-1" {
  ami           = var.ami
  key_name      = var.key_name
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public-mini-project-1.id
  associate_public_ip_address=true
  user_data                   = file("./backend.sh")
  vpc_security_group_ids = [aws_security_group.sg-backend.id]
  depends_on = [aws_internet_gateway.gw]
  tags = {
    Name = var.ec2_key_name-2
  }
}

resource "aws_instance" "MySQL-database" {
  ami           = var.ami
  key_name      = var.key_name
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public-mini-project-1.id
  associate_public_ip_address=true
  vpc_security_group_ids = [aws_security_group.sg-mysql.id]
  user_data                   = file("./database.sh")
  depends_on = [aws_internet_gateway.gw]
  tags = {
    Name = var.ec2_key_name-3
  }
}

resource "aws_instance" "frontend-node-2" {
  ami           = var.ami
  key_name      = var.key_name
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public-mini-project-2.id
  associate_public_ip_address=true
  user_data                   = file("./frontend.sh")
  vpc_security_group_ids = [aws_security_group.sg-frontend.id]
  depends_on = [aws_internet_gateway.gw]
  tags = {
    Name = var.ec2_key_name-4
  }
}

resource "aws_instance" "backend-2" {
  ami           = var.ami
  key_name      = var.key_name
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public-mini-project-2.id
  associate_public_ip_address=true
  user_data                   = file("./backend.sh")
  vpc_security_group_ids = [aws_security_group.sg-backend.id]
  depends_on = [aws_internet_gateway.gw]
  tags = {
    Name = var.ec2_key_name-5
  }
}