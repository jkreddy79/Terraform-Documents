# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# virtual private network
variable my_vpc {
  default = {
    cidr = "10.0.0.0/16"
    name = "custom_vpc"
  }
}
