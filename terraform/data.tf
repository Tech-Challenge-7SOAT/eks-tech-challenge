data "aws_subnets" "fastfood_subnets" {
  filter {
    name   = "vpc-id"
    values = ["vpc-0ca17985796d02bda"]
  }
}