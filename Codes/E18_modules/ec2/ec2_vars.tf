# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

#Apache instance variables
variable ami_id {}
variable instance_type {
  default = "t2.micro"
}

variable instance_tag {}

