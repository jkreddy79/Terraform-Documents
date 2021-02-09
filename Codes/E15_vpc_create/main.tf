# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create vpc :
resource "aws_vpc" "custom" {
  cidr_block       = var.my_vpc.cidr
  tags = {
    Name = var.my_vpc.name
  }
}