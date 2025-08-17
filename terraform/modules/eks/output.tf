output "cluster_name" {
  description = "EKS Cluster Name"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "EKS Cluster Endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "cluster_arn" {
  description = "EKS Cluster ARN"
  value       = aws_eks_cluster.this.arn
}

output "cluster_certificate" {
  description = "EKS Cluster Certificate Authority"
  value       = aws_eks_cluster.this.certificate_authority[0].data
}

output "node_group_name" {
  description = "EKS Node Group Name"
  value       = aws_eks_node_group.this.node_group_name
}

output "node_role_arn" {
  description = "IAM Role ARN for Node Group"
  value       = aws_iam_role.eks_node_role.arn
}
