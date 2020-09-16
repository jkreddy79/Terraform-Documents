provider "aws" {
  region = var.AWS_REGION
}

data "aws_availability_zones" "mumbai" {
  state = "available"
}

# Return list
#output "zone" {
#  value       = data.aws_availability_zones.mumbai.names
#

#Return one value
#output "zone" {
# value       = data.aws_availability_zones.mumbai.names[0]
#}