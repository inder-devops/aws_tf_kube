resource "aws_internet_gateway" "public_int_gw" {
    vpc_id = aws_vpc.my_project_vpc.id
    tags = {
        Name = "IGW: my_project_public_int_gw"
}