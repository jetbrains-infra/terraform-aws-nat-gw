resource "aws_eip" "nat" {
}

resource "aws_nat_gateway" "default" {
  allocation_id = aws_eip.nat.id
  subnet_id     = local.subnet_id
}

resource "aws_route_table" "nat" {
  vpc_id = local.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.default.id
  }

  tags = {
    Name    = local.name
    Project = local.project
  }
}
