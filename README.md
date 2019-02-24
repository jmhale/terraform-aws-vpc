# terraform-aws-vpc

Terraform module to deploy a VPC in AWS

## Variables
| Variable Name | Type | Required |Description |
|---------------|-------------|-------------|-------------|
|`env`|`string`|No. Defaults to `prod`||
|`region`|`string`|No. Defaults to `us-east-1`||
|`vpc_cidr`|`string`|No. Defaults to `10.0.0.0/16`|A SSH public key ID to add to the VPN instance.|
|`subnet_cidr_public_a`|`string`|Yes|CIDR block to use for the public subnet in the "A" Availability Zone. Must be within the CIDR block specified in `vpc_cidr`|
|`subnet_cidr_public_b`|`string`|Yes|CIDR block to use for the public subnet in the "B" Availability Zone. Must be within the CIDR block specified in `vpc_cidr`|
|`subnet_cidr_public_b`|`string`|Yes|CIDR block to use for the public subnet in the "C" Availability Zone. Must be within the CIDR block specified in `vpc_cidr`|
|`subnet_cidr_private_a`|`string`|Yes|CIDR block to use for the private subnet in the "A" Availability Zone. Must be within the CIDR block specified in `vpc_cidr`|
|`subnet_cidr_private_b`|`string`|Yes|CIDR block to use for the private subnet in the "B" Availability Zone. Must be within the CIDR block specified in `vpc_cidr`|
|`subnet_cidr_private_c`|`string`|Yes|CIDR block to use for the private subnet in the "C" Availability Zone. Must be within the CIDR block specified in `vpc_cidr`|


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

## Outputs
| Output Name | Description |
|---------------|-------------|
|`vpc_id`|ID of the VPC that is created.|
|`subnet_id_public_a`|ID of the public subnet in the "A" Availability Zone.|
|`subnet_id_public_b`|ID of the public subnet in the "B" Availability Zone.|
|`subnet_id_public_b`|ID of the public subnet in the "C" Availability Zone.|
|`subnet_id_private_a`|ID of the private subnet in the "A" Availability Zone.|
|`subnet_id_private_b`|ID of the private subnet in the "B" Availability Zone.|
|`subnet_id_private_c`|ID of the private subnet in the "C" Availability Zone.|

LICENSE: 3-clause BSD license.


---
Copyright © 2019, James Hale
