# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create incremental instance:
resource "aws_instance" "apache_instance" {
  count         = var.instance_data.count
  ami           = var.instance_data.ami
  instance_type = var.instance_data.type
  tags = {
    Name  = "https_server_${count.index}"
  }
}



