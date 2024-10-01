# resource "aws_subnet" "subnet-eks-1-pub" {
#   vpc_id                  = aws_vpc.primary.id
#   cidr_block              = "10.0.1.0/24"
#   availability_zone       = "us-east-1a"
#   depends_on              = [aws_internet_gateway.internet_gateway]
#   map_public_ip_on_launch = true
# }

# resource "aws_subnet" "subnet-eks-2-pub" {
#   vpc_id                  = aws_vpc.primary.id
#   cidr_block              = "10.0.2.0/24"
#   availability_zone       = "us-east-1b"
#   map_public_ip_on_launch = true
# }

# resource "aws_subnet" "subnet-eks-1-pvt" {
#   vpc_id                  = aws_vpc.primary.id
#   cidr_block              = "10.0.3.0/24"
#   availability_zone       = "us-east-1a"
#   map_public_ip_on_launch = true
# }

# resource "aws_subnet" "subnet-eks-2-pvt" {
#   vpc_id                  = aws_vpc.primary.id
#   cidr_block              = "10.0.4.0/24"
#   availability_zone       = "us-east-1b"
#   map_public_ip_on_launch = true
# }