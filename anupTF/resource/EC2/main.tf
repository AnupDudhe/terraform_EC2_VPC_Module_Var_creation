resource "aws_instance" "this" {
  ami                     = var.aws_instance_this_ami
  instance_type           = var.aws_instance_this_instance_type
  #security_groups =         ["var.aws_instance_this_security_groups.id"]  
  subnet_id = var.aws_instance_this_subnet_id
  key_name = var.aws_instance_this_key_pair
  associate_public_ip_address = var.aws_instance_this_pub

    user_data = <<-EOF
      #!/bin/sh
      sudo -i
      systemctl start nginx
      systemctl enable nginx
      systemctl start mariadb
      systemctl enable mariadb
      bash /root/apache-tomcat-8.5.97/bin/catalina.sh start
      EOF
}