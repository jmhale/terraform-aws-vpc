# terraform-aws-vpc

Terraform module to deploy a VPC in AWS

## Usage

```
module "terraform-aws-vpc" {
  source   = "git@github.com:jmhale/terraform-aws-vpc.git"
  env      = "prod"
  region   = "us-east-1"
  vpc_cidr = "10.0.0.0/16"

  subnet_cidr_private_a = "10.0.1.0/24"
  subnet_cidr_private_b = "10.0.2.0/24"
  subnet_cidr_private_c = "10.0.3.0/24"
  subnet_cidr_public_a  = "10.0.11.0/24"
  subnet_cidr_public_b  = "10.0.12.0/24"
  subnet_cidr_public_c  = "10.0.13.0/24"
}

```


LICENSE: 3-clause BSD license.


---
Copyright © 2019, James Hale
