module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.name
  cidr = "10.0.0.0/16"

  azs             = ["ap-northeast-1a", "ap-northeast-1c"]
  public_subnets  = ["10.0.11.0/24"]
  private_subnets = ["10.0.1.0/24"]

  public_subnet_names  = ["Public Subnet 1a"]
  private_subnet_names = ["Private Subnet 1a"]

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
}