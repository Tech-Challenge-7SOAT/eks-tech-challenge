terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.17.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.62"
    }
  }
}

provider "aws" {
  region      = var.AWS_REGION
  access_key  = var.AWS_ACCESS_KEY_ID
  secret_key  = var.AWS_SECRET_ACCESS_KEY
  token       = var.AWS_SESSION_TOKEN
}

provider "kubernetes" {
  host                   = aws_eks_cluster.main.endpoint
  token                  = data.aws_eks_cluster_auth.main.token
  cluster_ca_certificate = base64decode(aws_eks_cluster.main.certificate_authority[0].data)
}

data "aws_eks_cluster" "main" {
  name = aws_eks_cluster.main.name
}

data "aws_eks_cluster_auth" "main" {
  name = aws_eks_cluster.main.name
}