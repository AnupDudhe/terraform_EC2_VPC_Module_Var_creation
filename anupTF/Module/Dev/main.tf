module "Devloper_env" {
  source = "/mnt/c/Users/Anup/Desktop/anupTF/resource/EC2"
  aws_instance_this_ami = "ami-0d2e2d99a673fca16"
  aws_instance_this_instance_type = "t2.micro"
  aws_instance_this_key_pair = "NVanupDelete"
  #aws_instance_this_security_groups = "sg-0e0c5e2ada8c28466"
  aws_instance_this_subnet_id = module.Devloper_env_VPC.vpc_subnet_id
  aws_instance_this_pub = "true"
}

module "Devloper_env_VPC" {
  source = "/mnt/c/Users/Anup/Desktop/anupTF/resource/VPC"
  aws_vpc_main_cidr_block =  "3.19.0.0/16"
  aws_subnet_prod-subnet-public-1_cidr_block = "3.19.0.0/17"
  aws_subnet_prod-subnet-public-1_map_public_ip_on_launch  = "true"
  aws_subnet_prod-subnet-public-1_availability_zone = "us-east-1b"

}
