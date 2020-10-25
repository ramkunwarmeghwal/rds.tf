provider "aws"  {
   region  = "ap-south-1"
   profile = "myvimal" 
}

variable "enter_ur_key_name" {
          type = string
          default = "mykey1111"
 }




resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "mydb"
  password             = "9887613033"
  parameter_group_name = "default.mysql5.7"
  publicly_accessible = true
  Security_group_names = "allow_all_all"
}









//https://github.com/hashicorp/terraform/issues/7035


resource "aws_db_security_group" "default" {
  name = "allow_all_all"

depends_on = [
    aws_db_instance.default
    //aws_iam_role_policy.example,
  ]

  ingress {
    cidr = "10.0.0.0/24"
  }
 }

