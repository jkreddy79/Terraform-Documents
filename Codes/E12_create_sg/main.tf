# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create new security group :
resource "aws_security_group" "TF_SG" {
    name = "Allow HTTP Ports"
    vpc_id = var.vpc["id"]

    ingress {
        description = "inbound"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.vpc["cidr"]]
    }
    egress {
        description = "outbound"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags = {
        sg_name = "http_sg_new"
    }

}