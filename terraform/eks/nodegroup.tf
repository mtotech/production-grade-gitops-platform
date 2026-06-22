#  create nodegroup

resource "aws_eks_node_group" "main" {

  cluster_name = aws_eks_cluster.main.name

  node_group_name = "gitops-node-group"

  node_role_arn = aws_iam_role.node_role.arn

  subnet_ids = data.terraform_remote_state.network.outputs.private_subnet_ids

  instance_types = var.node_instance_types

  capacity_type = "ON_DEMAND"

  scaling_config {

    desired_size = 2

    min_size = 2

    max_size = 4
  }

  update_config {

    max_unavailable = 1
  }

  lifecycle {

    ignore_changes = [
      scaling_config[0].desired_size
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.worker_policies
  ]

  tags = local.common_tags
}
