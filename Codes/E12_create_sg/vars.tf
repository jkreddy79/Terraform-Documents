# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# VPC 
variable "vpc" {
  default = {
    id = "vpc-f9cf2e92"
    cidr = "172.31.0.0/16"
  }
}


