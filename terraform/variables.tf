# AWS region for this environment
variable "region" {
  description = "AWS region for the environment"
  type        = string
}

# EKS Cluster variables
variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}


variable "cluster_version" {
  description = "EKS cluster version"
  type        = string
}

variable "node_group_name" {
  description = "EKS node group name"
  type        = string
}

variable "node_instance_type" {
  description = "EKS node EC2 instance type"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of nodes in node group"
  type        = number
}

variable "min_capacity" {
  description = "Minimum number of nodes in node group"
  type        = number
}

variable "max_capacity" {
  description = "Maximum number of nodes in node group"
  type        = number
}

# ECR Repository variables
variable "repository_name" {
  description = "ECR repository name"
  type        = string
}

variable "image_tag_mutability" {
  description = "ECR image tag mutability"
  type        = string
  default     = "MUTABLE"
}

variable "tags" {
  description = "Tags for ECR repository"
  type        = map(string)
  default     = {}
}
