resource "aws_subnet" "my_project_public_subnet" {
    count                  = length(var.cidr_public_subnets)
    vpc_id                 = aws_vpc.my_project_vpc.id
    cidr_block             = element(var.cidr_public_subnets, count.index)
    availability_zone      = element(var.availability_zones, count.index)
    tags = {
        Name = "Public-Subnet : Public Sublet ${count.index + 1}"
    }
}


resource "aws_subnet" "my_project_private_subnet" {
    count                  = length(var.cidr_private_subnets)
    vpc_id                 = aws_vpc.my_project_vpc.id
    cidr_block             = element(var.cidr_private_subnets, count.index)
    availability_zone      = element(var.availability_zones, count.index)
    tags = {
        Name = "Private-Subnet : Public Subnet ${count.index + 1}"
    }
}