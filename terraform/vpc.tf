# VPC Configuration for AWS
# This file defines the VPC resource for the project in ap_south-1 region.

resource "aws_vpc" "my_project_vpc" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "VPC: my_project_vpc"
    }
}