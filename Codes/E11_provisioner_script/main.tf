provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "http_ec2" {
    ami = lookup (var.AMI, var.AWS_REGION)
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.SG]
    tags = {Name = "HTTP_SERVER"}
    key_name = "xxxxxx"
    count = 1

provisioner "file" {
 source = "/data/basic.sh"
 destination = "/tmp/basic.sh"
 }

provisioner "remote-exec" {
 inline = ["sudo chmod +x /tmp/basic.sh", "sudo /tmp/basic.sh"]
 }

connection {
  host = self.public_ip
  user = var.ec2_user
  private_key = file("xxxxx.pem")    
    }
}