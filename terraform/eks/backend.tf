#  creating seperate backend for eks infrastructure
# Store EKS Terraform state in S3 and Enable state locking

terraform {

  backend "s3" {

    bucket         = "gitops-tf-state-neeraj"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"

    encrypt = true
  }
}
