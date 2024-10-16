resource "aws_db_subnet_group" "default" {
  name       = "db-subnet"
  subnet_ids = [aws_subnet.public-mini-project-2.id, aws_subnet.private-mini-project-1.id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "db" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.username
  password             = var.rds-password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  #availability_zone = "eu-west-2b"
}