# -----------------------------
# VPC Outputs
# -----------------------------
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "List of private subnet IDs"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of public subnet IDs"
  value       = module.vpc.public_subnets
}

# -----------------------------
# EKS Cluster Outputs
# -----------------------------
output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_certificate_authority" {
  description = "EKS cluster Certificate Authority data"
  value       = module.eks.cluster_certificate
}

output "eks_node_group_name" {
  description = "EKS managed node group name"
  value       = module.eks.node_group_name
}

# -----------------------------
# ECR Repository Outputs
# -----------------------------
output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = module.app_ecr.repository_url
}

output "ecr_repository_arn" {
  description = "The ARN of the ECR repository"
  value       = module.app_ecr.repository_arn
}
