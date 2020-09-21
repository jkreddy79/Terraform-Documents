# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# Image
variable instance_data {
  default = {
    ami = "xxxxxxx"
    type = "t2.micro"
    name = "http_server"
    drive = "/dev/sdh"
  }
}

