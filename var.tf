variable "redis_sub_ids" {
  description = "RDS Subnet Ids"
  type        = list(string)
  default     = ["subnet-04142356484455bc3", "subnet-00f107a6f255b1b99"]
}

variable "replication_group_id" {
  type    = string
  default = "redis-cluster"
}

variable "engine" {
  type    = string
  default = "redis"
}

variable "engine_version" {
  type    = string
  default = "7.0"
}

variable "node_type" {
  type    = string
  default = "cache.r6g.large"
}

variable "parameter_group_name" {
  description = "Name of the parameter group aligned with the version specified in engine_version (e.g. default.redis7)"
  type        = string
  default     = "default.redis7.cluster.on"
}
