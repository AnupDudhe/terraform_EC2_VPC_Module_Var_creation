resource "aws_vpc" "main" {
  cidr_block = var.aws_vpc_main_cidr_block
   

}

resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.aws_subnet_prod-subnet-public-1_cidr_block
    #map_public_ip_on_launch = var.aws_subnet_prod-subnet-public-1_map_public_ip_on_launch //it makes this a public subnet
    availability_zone = var.aws_subnet_prod-subnet-public-1_availability_zone
     

}




