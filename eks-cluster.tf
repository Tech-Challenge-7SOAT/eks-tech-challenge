resource "aws_eks_cluster" "eks-cluster" {
  name     = var.projectName
  role_arn = var.labRole

  vpc_config {
    endpoint_public_access    = true
    endpoint_private_access   = false

    subnet_ids = [
      aws_subnet.subnet-eks-1-pub.id,
      aws_subnet.subnet-eks-2-pub.id,
      aws_subnet.subnet-eks-1-pvt.id,
      aws_subnet.subnet-eks-2-pvt.id
    ]

    public_access_cidrs     = ["0.0.0.0/0"]
  }

  access_config {
    authentication_mode = var.accessConfig
  }
}