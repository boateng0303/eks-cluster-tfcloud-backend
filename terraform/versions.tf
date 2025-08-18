terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "sheva"

    workspaces {
      name = "dev"  # Workspace per env + region
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
