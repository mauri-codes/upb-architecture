resource "aws_ssm_parameter" "database_endpoint" {
  name  = "/${var.application}/db/endpoint"
  type  = "String"
  value = "database-1.crbxzjvnu4bk.us-east-1.rds.amazonaws.com"
}

resource "aws_ssm_parameter" "database_user" {
  name  = "/${var.application}/db/user"
  type  = "String"
  value = "admin"
}

resource "aws_ssm_parameter" "database_password" {
  name  = "/${var.application}/db/password"
  type  = "SecureString"
  value = "myadminpassword"
}

