resource "aws_route_table" "my_public_route_table" {
    
    vpc_id = aws_vpc.my_project_vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.public_int_gw.id
    }
    
    tags = {
      "Name" = "Public Route Table: For my project"
    }
}

resource "aws_route_table" "my_private_route_table" {
    
    vpc_id = aws_vpc.my_project_vpc.id
    depends_on = [ aws_nat_gateway.my_nat_gateway ]
    count = length(var.cidr_private_subnets)

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.my_nat_gateway[count.index].id
    }
    
    tags = {
        "Name" = "Private Route table: For my project"
    }
}