output "frontend-public-ip"{
    value= aws_instance.frontend-node-1.public_dns
}

output "backend-1public-ip"{
    value= aws_instance.backend-1.public_dns
}

output "MySQL-Database-public-ip"{
    value= aws_instance.MySQL-database.public_dns
}
output "frontend-node-2-public-ip"{
    value= aws_instance.frontend-node-2.public_dns
}

output "sql" {
  value = aws_db_instance.db.endpoint
}

output "backend-2-public-ip"{
    value= aws_instance.backend-2.public_dns
}


