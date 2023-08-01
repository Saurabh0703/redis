resource "aws_elasticache_subnet_group" "redis_sub_ids" {
  name       = "redis-subnet-group"
  subnet_ids = var.redis_sub_ids
}

resource "aws_elasticache_replication_group" "vr" {
  replication_group_id        = var.replication_group_id
  description                 = "Example Redis cluster"
  engine                      = var.engine
  engine_version              = var.engine_version
  node_type                   = var.node_type
  replicas_per_node_group     = 1 // Set the number of replicas per node group
  subnet_group_name           = aws_elasticache_subnet_group.redis_sub_ids.name
  parameter_group_name        = var.parameter_group_name
  automatic_failover_enabled  = true // Enable automatic failover for Redis cluster mode
}

