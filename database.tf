resource "aws_db_subnet_group" "lenovolapi" {
    name = "lapilenovo"
    subnet_ids = [ module.vpc.private_subnets[local.db_subnets1], module.vpc.private_subnets[local.db_subnets2] ]

    tags = {
        "Name" = "lapilenovo123"
    }

    depends_on = [
      module.vpc

    ]
  
}

resource "aws_db_instance" "delllapi" {
  allocated_storage    = 20
  db_name              = "mydelllapi"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "root"
  password             = "rootroot"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.asuslapi.id]
  db_subnet_group_name = aws_db_subnet_group.lenovolapi.name

  depends_on = [
    module.vpc,
    aws_security_group.asuslapi
  ]

}