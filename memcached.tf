provider "aws" {
  access_key  = "${var.aws_access_key_id}"
  secret_key  = "${var.aws_secret_access_key}"
  region      = "${var.aws_region}"
}

resource "aws_elasticache_cluster" "memcachedCluster" {
  cluster_id           = "demo-memcached"
  engine               = "memcached"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 2
  parameter_group_name = "default.memcached1.4"
  port                 = 11211
}

output "configuration_endpoint" {
  value = "${aws_elasticache_cluster.memcachedCluster.configuration_endpoint}"
}

output "port" {
  value = "${aws_elasticache_cluster.memcachedCluster.port}"
}

output "engine_version" {
  value = "${aws_elasticache_cluster.memcachedCluster.engine_version}"
}

output "num_cache_nodes" {
  value = "${aws_elasticache_cluster.memcachedCluster.num_cache_nodes}"
}

output "cache_node_0_address" {
  value = "${aws_elasticache_cluster.memcachedCluster.cache_nodes.0.address}"
}

output "cache_node_1_address" {
  value = "${aws_elasticache_cluster.memcachedCluster.cache_nodes.1.address}"
}
