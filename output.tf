output "cluster_endpoint" {
  value = aws_elasticache_replication_group.vr.primary_endpoint_address
}

