# create eks cluster

resource "aws_eks_cluster" "main" {

  name = var.cluster_name

  role_arn = aws_iam_role.eks_cluster_role.arn

  version = var.eks_version

  vpc_config {

    subnet_ids = data.terraform_remote_state.network.outputs.private_subnet_ids

    endpoint_private_access = true

    endpoint_public_access = true
  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster_policies
  ]

  tags = local.common_tags
}



