variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for EKS worker nodes"
  type        = list(string)
}

variable "cluster_version" {
  description = "EKS Cluster version"
  type        = string
  default     = "1.28"
}

variable "node_group_name" {
  description = "Name of the EKS managed node group"
  type        = string
  default     = "eks-prod-ng"
}

variable "node_instance_type" {
  description = "EC2 instance type for nodes"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "Desired number of nodes in the node group"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Max number of nodes in the node group"
  type        = number
  default     = 4
}

variable "min_capacity" {
  description = "Min number of nodes in the node group"
  type        = number
  default     = 1

}