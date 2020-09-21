provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "vm" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.instance_tag
}

output "instance_id" {
  value = aws_instance.vm.id
}