# variable file for backend

variable "aws_region" {
  default = "ap-south-1"
}

variable "bucket_name" {
  default = "gitops-tf-state-neeraj"
}

variable "dynamodb_table" {
  default = "terraform-lock-table"
}
