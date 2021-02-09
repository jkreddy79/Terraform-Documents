module "dev_apache" {
  source       = "/data/Devops/terraform-workspace/E18_modules/ec2"
  ami_id       = "ami-052c08d70def0ac62"
  instance_type = "t2.micro"
  zone = "ap-south-1a"
  instance_tag = { name = "dev_https" }
}

module "dev_apache_ebs" {
  source      = "/data/Devops/terraform-workspace/E18_modules/ebs"
  volume_name = "dev_apache_vol"
  volume_size = 1
  instance_id = module.dev_apache.instance_id
}

