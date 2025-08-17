provider "aws" {
  region = var.region
}


module "vpc" {
  source   = "./modules/vpc"
  env      = "dev"
  vpc_cidr = "10.0.0.0/16"
}


module "eks" {
  source            = "./modules/eks"
  cluster_name      = var.cluster_name

  vpc_id            = module.vpc.vpc_id         # reference VPC ID
  subnet_ids        = module.vpc.private_subnets  # use private subnets for nodes
  cluster_version   = var.cluster_version
  node_group_name   = var.node_group_name
  node_instance_type = var.node_instance_type
  desired_capacity  = var.desired_capacity
  min_capacity      = var.min_capacity
  max_capacity      = var.max_capacity
}



module "app_ecr" {
  source          = "./modules/ecr"
  repository_name = var.repository_name
  image_tag_mutability = var.image_tag_mutability
  tags            = var.tags
}
