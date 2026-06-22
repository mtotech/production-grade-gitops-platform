# create backend

terraform {

  backend "s3" {

    bucket         = "gitops-tf-state-neeraj"
    key            = "network/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"

    encrypt = true
  }
}
