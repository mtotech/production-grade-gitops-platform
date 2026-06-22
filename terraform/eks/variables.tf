#  Variables

variable "aws_region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "gitops-eks-cluster"
}

variable "eks_version" {
  default = "1.31"
}

variable "node_instance_types" {

  default = [
    "t3.medium"
  ]
}
