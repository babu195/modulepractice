module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.module_name
  cidr = var.aws_region

  azs             = [local.azs_a, local.azs_b]
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}