resource "aws_eks_node_group" "eks-node" {
  cluster_name    = aws_eks_cluster.eks-cluster.name
  node_group_name = var.nodeGroup
  node_role_arn   = var.labRole
  subnet_ids      = [
    aws_subnet.subnet-eks-1-pub.id,
    aws_subnet.subnet-eks-2-pub.id
  ]
  disk_size       = 50
  instance_types  = [var.instanceType]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}