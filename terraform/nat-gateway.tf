resource "aws_eip" "nat_IP" {
    count = length(var.cidr_private_subnets)
    domain   = "vpc"
}

resource "aws_nat_gateway" "my_nat_gateway" {
  count = length(var.cidr_private_subnets)
  depends_on = [aws_eip.nat_IP]
  allocation_id = aws_eip.nat_IP[count.index].id
  subnet_id = aws_subnet.my_project_private_subnet[count.index].id
  tags = {
    "Name" = "Private NAT GW: For private subnet"
  }
}