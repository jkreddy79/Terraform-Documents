provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "http_ec2" {
    ami = lookup (var.AMI, var.AWS_REGION)
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.SG]
    tags = {Name = "HTTP_SERVER"}
    key_name = "xxxxx"
    count = 1

provisioner "remote-exec" {
   inline = ["sudo yum install httpd* -y"]
}

connection {
  host = self.public_ip
  user = var.ec2_user
  private_key = file("xxxxx.pem")    
    }
}



