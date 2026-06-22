# Import Network Outputs  , This is where Phase 3 connects to Phase 2

data "terraform_remote_state" "network" {

  backend = "s3"

  config = {

    bucket = "gitops-tf-state-neeraj"

    key = "network/terraform.tfstate"

    region = "ap-south-1"
  }
}
