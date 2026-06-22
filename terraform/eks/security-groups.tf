# Create Security Group

resource "aws_security_group" "eks_cluster" {

  name = "gitops-eks-cluster-sg"

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id

  tags = merge(
    local.common_tags,
    {
      Name = "eks-cluster-sg"
    }
  )
}
