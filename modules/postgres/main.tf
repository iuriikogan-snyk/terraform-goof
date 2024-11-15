resource "aws_db_instance" "mydb" {
  allocated_storage = 20
  engine             = "postgres"
  engine_version    = "13.4"
  instance_class    = "db.t3.micro"
  username          = "mydbuser"
  password          = "mydbpassword"
  skip_final_snapshot = true
  storage_encrypted = true
  iam_database_authentication_enabled = true
  backup_retention_period = 1
}