provider "aws" {
  region = "us-east-2"
aws_access_key_id = "AKIA6K5Q6XPCLIQ2LJVL"
aws_secret_access_key = "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"

}

#Resource: aws_db_instance
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
