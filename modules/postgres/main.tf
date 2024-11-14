resource "aws_db_instance" "postgres" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "13.4"
  instance_class       = "db.t3.micro"
  storage_encrypted = true
  iam_database_authentication_enabled = true
  backup_retention_period =
  username             = var.db_username
  password             = var.db_password
  skip_final_snapshot = true
  vpc_security_group_ids = outputs.modules.vpc.aws_vpc.aws_default_security_group.id
  db_subnet_group_name = outputs.modules.subnet.aws_subnet_group.name
}
variable "db_username" {
  type = string
  default = "admin"
}

variable "db_password" {
  type = string
  default = "admin"
}
