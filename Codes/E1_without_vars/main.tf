provider "aws" {
    access_key = "xxxxxxxxx"
    secret_key = "xxxxxxxxx"
    region = "xxxxxxxx"
}

resource "aws_instance" "my_first_machine" {
    ami = "xxxxxxxx"
    instance_type = "t2.micro"
}