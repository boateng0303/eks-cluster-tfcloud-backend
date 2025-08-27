terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "sheva"

    workspaces {
      name = "devv"  # Workspace per env + region
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
