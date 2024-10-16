output "pub_ip_frontend_1"{
    value= aws_instance.frontend-1.public_dns 
}

output "pub_ip_backend_1"{
    value= aws_instance.backend-1.public_dns
}

output "pub_ip_MySQLDatabase"{
    value= aws_instance.MySQLdatabase.public_dns
}
output "pub_ip_frontend_2"{
    value = aws_instance.frontend-2.public_dns
}

output "mysql_url" {
  value = aws_db_instance.db.endpoint
}

output "pub_ip_backend_2"{
    value = aws_instance.backend-2.public_dns
}


