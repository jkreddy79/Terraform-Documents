provider "aws" {
    region = var.AWS_REGION
}

data "aws_ami" "my_image" {
  owners = ["self"]
  filter {
    name   = "tag:image"
    values = ["ubuntu_1"]
  }  
   filter {
    name   = "state"
    values = ["available"]
  }  
}

#output "ds" {
#  value = data.aws_ami.my_image.id
#}

resource "aws_instance" "ds_ec2" {
  ami = data.aws_ami.my_image.id
  instance_type = "t2.micro"
}

