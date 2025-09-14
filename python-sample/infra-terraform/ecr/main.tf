provider "aws" {
  region = var.region
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.30.0"
    }
  }

  required_version = ">= 1.3.0"
}
resource "aws_ecr_repository" "flask_hello" {
  name                 = "flask-hello"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = "dev"
    Project     = "eks-flux"
  }
}
