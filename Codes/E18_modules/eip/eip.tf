provider "aws" {
    region = var.AWS_REGION
}

resource "aws_eip" "instance_eip" {
    count = var.create_eip == true ? 5 : 0
}
