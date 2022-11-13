locals {
  azs_a = format("%sa", var.aws_region)
  azs_b = format("%sb", var.aws_region)
  mysql_port = 3306
  http_port = 80
  ssh_port = 22
  tcp = "tcp"
  anyware = "0.0.0.0/0"
  db_subnets1 = 0
  db_subnets2 = 1
  app_subnets1 = 2
  app_subnets2 = 3
}