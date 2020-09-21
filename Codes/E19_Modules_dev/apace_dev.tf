module "dev_apache" {
  source       = "/data/terraform-workspace/E18_modules/ec2"
  ami_id       = "ami-052c08d70def0ac62"
  instance_tag = { name = "dev_https" }
}

module "dev_apache_ebs" {
  source      = "/data/terraform-workspace/E18_modules/ebs"
  volume_name = "dev_apache_vol"
  volume_size = 1
  instance_id = module.dev_apache.instance_id
}
