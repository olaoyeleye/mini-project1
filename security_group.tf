resource "aws_security_group" "sg-frontend" {
  name        = "${var.sg_name}-frontend"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.mini_project_vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  #[aws_vpc.mini_project_vpc.cidr_block]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  #[aws_vpc.mini_project_vpc.cidr_block]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  #[aws_vpc.mini_project_vpc.cidr_block]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  #[aws_vpc.mini_project_vpc.cidr_block]
  }

  tags = {
    Name = "${var.sg_name}-frontend"
  }
}


resource "aws_security_group" "sg-backend" {
  name        = "${var.sg_name}-backend"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.mini_project_vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  ##[aws_vpc.mini_project_vpc.cidr_block]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  #[aws_vpc.mini_project_vpc.cidr_block]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  #[aws_vpc.mini_project_vpc.cidr_block]
  } 

  tags = {
    Name = "${var.sg_name}-backend"
  }
}

resource "aws_security_group" "sg-mysql" {
  name        = "${var.sg_name}-mysql"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.mini_project_vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  #[aws_vpc.mini_project_vpc.cidr_block]  #["0.0.0.0/0"]  #
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #["3.8.37.24/29"]  #[aws_vpc.mini_project_vpc.cidr_block]  #
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]   #[aws_vpc.mini_project_vpc.cidr_block]
  } 
  tags = {
    Name = "${var.sg_name}-mysql"
  }
}
