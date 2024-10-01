# data "aws_vpc" "primary" {
#   filter {
#     name   = "tag:Name"
#     values = ["fastfood_vpc"]
#   }
# }

# resource "aws_route_table" "route" {
#   vpc_id = aws_vpc.primary.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet_gateway.id
#   }
# }

# resource "aws_route_table_association" "route_table_association_pub_1" {
#   subnet_id      = aws_subnet.subnet-eks-1-pub.id
#   route_table_id = aws_route_table.route.id
# }

# resource "aws_route_table_association" "route_table_association_pub_2" {
#   subnet_id      = aws_subnet.subnet-eks-2-pub.id
#   route_table_id = aws_route_table.route.id
# }

# resource "aws_route_table_association" "route_table_association_pvt_1" {
#   subnet_id      = aws_subnet.subnet-eks-1-pvt.id
#   route_table_id = aws_route_table.route.id
# }

# resource "aws_route_table_association" "route_table_association_pvt_2" {
#   subnet_id      = aws_subnet.subnet-eks-2-pvt.id
#   route_table_id = aws_route_table.route.id
# }

# resource "aws_vpc_endpoint_security_group_association" "sg_ec2" {
#   vpc_endpoint_id   = aws_vpc_endpoint.ec2.id
#   security_group_id = aws_eks_cluster.eks-cluster.vpc_config[0].cluster_security_group_id
# }

# resource "aws_vpc_endpoint" "ec2" {
#   vpc_id            = aws_vpc.primary.id
#   service_name      = "com.amazonaws.us-east-1.ec2"
#   vpc_endpoint_type = "Interface"
# }