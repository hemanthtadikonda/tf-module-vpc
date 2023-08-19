resource "aws_subnet" "main" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnets.each.value["cidr"]
  availability_zone = var.subnets.each.value["az"]

  tags = {
    Name = "each.key"
  }
}