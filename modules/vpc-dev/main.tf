module "royal-vpc-dev" {
  source = "terraform-aws-modules/vpc/aws"

  name = "royal-vpc-dev"
  cidr = var.cidr_block

  azs             = var.azs
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/26", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
    Name = "royal-vpc-dev"
  }
}