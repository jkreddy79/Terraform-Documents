# Provider :
provider "aws" {
    region = var.AWS_REGION
}
# Fetch availabilty zone informations
data "aws_availability_zones" "mumbai" {
  state = "available"
}
# Create EBS volume
resource "aws_ebs_volume" "data" {
  availability_zone = data.aws_availability_zones.mumbai.names[0]
  size              = 1
  tags = {
    Name = var.instance_data.name
  }
}
# Create new instance
resource "aws_instance" "web" {
  ami               = var.instance_data.ami
  availability_zone = data.aws_availability_zones.mumbai.names[0]
  instance_type     = var.instance_data.type
  tags = {
    Name = var.instance_data.name
  }
}
# Attach newly create EBS volume to instance
resource "aws_volume_attachment" "ebs_att" {
  device_name = var.instance_data.drive
  volume_id   = aws_ebs_volume.data.id
  instance_id = aws_instance.web.id
}


