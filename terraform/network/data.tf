# Data sources allow Terraform to retrieve existing
# AWS information dynamically instead of hardcoding values

data "aws_availability_zones" "available" {}
