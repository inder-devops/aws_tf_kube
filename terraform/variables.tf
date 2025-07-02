variable "vpc_cidr" {
    description = "CIDR block for the my VPC"
    type        = string
    default     = "10.0.0.0/16"
}

variable "cidr_public_subnets" {
    description = "CIDR block for the Public subnet"
    type        = list(string)
    default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "cidr_private_subnets" {
    description = "CIDR block for the Private subnet"
    type        = list(string)
    default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
    description = "List of availability zones to use for the subnets"
    type        = list(string)
    default     = ["ap-south-1a", "ap-south-1b"]
}