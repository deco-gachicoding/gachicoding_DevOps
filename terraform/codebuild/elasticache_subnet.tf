## Elasticache Subnet Group
## Subnet group will be created to DB Private subnets
#resource "aws_elasticache_subnet_group" "default" {
#  name = "subnets-elasticache"
#  description = "The subnets used for elasticache deployments"
#  subnet_ids = data.terraform_remote_state.vpc.outputs.db_private_subnets
#}