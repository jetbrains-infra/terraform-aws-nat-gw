## About
Terraform module to create nat gateway.

## Usage

```
module "nat" {
  source    = "github.com/jetbrains-infra/terraform-aws-nat-gw"
  subnet_id = "${local.vpc_id}"
  name      = "Nat gateway for ECS cluster"
  project   = "foobar"
}
```

## Outputs

* `route_table_id` - route table id 
