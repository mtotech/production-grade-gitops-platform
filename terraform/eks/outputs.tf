output "cluster_name" {

  value = aws_eks_cluster.main.name
}

output "cluster_endpoint" {

  value = aws_eks_cluster.main.endpoint
}

output "oidc_provider_arn" {

  value = aws_iam_openid_connect_provider.eks.arn
}

output "nodegroup_name" {

  value = aws_eks_node_group.main.node_group_name
}
