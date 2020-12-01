provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "apache" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {name = var.instance_tag}
}