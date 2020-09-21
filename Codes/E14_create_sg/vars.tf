# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# VPC 
variable "vpc" {
  default = {
    id = "xxxxxxx"
    cidr = "172.31.0.0/16"
  }
}


