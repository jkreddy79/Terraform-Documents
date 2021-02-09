module "prod_apache" {
    source = "/data/terraform-workspace/E18_modules/ec2"
    ami_id = "ami-052c08d70def0ac62"
    instance_type = "t2.micro"
    zone = "ap-south-1a"
    instance_tag = {name = "prod_https"} 
}

module "prod_apache_ebs" {
    source = "/data/terraform-workspace/E18_modules/ebs"
    volume_name = "prod_apache_vol"
    volume_size = 5
    instance_id = module.prod_apache.instance_id
}