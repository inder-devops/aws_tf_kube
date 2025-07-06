resource "aws_route_table_association" "public_subnet_association"{
    depends_on = [ aws_route_table.my_public_route_table,aws_subnet.my_project_public_subnet ]
    subnet_id = element(aws_subnet.my_project_public_subnet[*].id,count.index)
    route_table_id = aws_route_table.my_public_route_table.id
    count = length(var.cidr_public_subnets)
}

resource "aws_route_table_association" "private_subnet_association"{
    depends_on = [ aws_route_table.my_private_route_table,aws_subnet.my_project_private_subnet]
    subnet_id = element(aws_subnet.my_project_private_subnet[*].id,count.index)
    route_table_id = aws_route_table.my_private_route_table.id
    count = length(var.cidr_private_subnets)
}
