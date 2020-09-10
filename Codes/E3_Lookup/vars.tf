# Access Key
variable AWS_ACCESSKEY {
  default     = "xxxxxxxx"
}

# Secret Key
variable AWS_SECRETKEY {
  default     = "xxxxxxx"
}

# Region
variable AWS_REGION {
  default     = "xxxxxxx"
}

# Image IDs
variable "AMI" {
  type        = map
  default     = {
    ap-south-1 = "ami-052c08d70def0ac62"
    us-east-2  = "ami-0a54aef4ef3b5f881"
  }
}
