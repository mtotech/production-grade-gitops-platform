# create terraform backend

terraform {

  backend "s3" {

    bucket         = "gitops-tf-state-neeraj"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"

    encrypt = true
  }
}
