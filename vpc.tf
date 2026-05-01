module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  cidr = "11.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["11.0.0.0/24", "11.0.1.0/24", "11.0.2.0/24"]
  public_subnets  = ["11.0.5.0/24", "11.0.6.0/24", "11.0.7.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = local.tags
  }