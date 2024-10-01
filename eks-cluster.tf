resource "aws_eks_cluster" "eks-cluster" {
  name     = var.projectName
  role_arn = var.labRole

  # vpc_config { ## tentativa de criar novas subnets
  #   endpoint_public_access    = true
  #   endpoint_private_access   = false

  #   subnet_ids = [
  #     aws_subnet.subnet-eks-1-pub.id,
  #     aws_subnet.subnet-eks-2-pub.id,
  #     aws_subnet.subnet-eks-1-pvt.id,
  #     aws_subnet.subnet-eks-2-pvt.id
  #   ]

  #   public_access_cidrs     = ["0.0.0.0/0"]
  # }

  vpc_config {
    subnet_ids         = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.regionDefault}e"]
    security_group_ids = [aws_security_group.sg.id]
  }

  access_config {
    authentication_mode = var.accessConfig
  }
}