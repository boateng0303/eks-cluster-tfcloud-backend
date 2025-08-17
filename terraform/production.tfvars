# AWS Region
region = "us-east-1"

# EKS Cluster variables
cluster_name       = "production-cluster"
cluster_version    = "1.32"
node_group_name    = "prod-ng"
node_instance_type = "t3.large"
desired_capacity   = 4
min_capacity       = 3
max_capacity       = 5

#VPC variables (CIDRs for the module)
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

# ECR Repository variables
repository_name     = "prod-myapp"
image_tag_mutability = "IMMUTABLE"
tags = {
  Environment = "production"
  ManagedBy   = "Terraform"
}
