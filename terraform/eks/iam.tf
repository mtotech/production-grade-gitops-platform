# EKS Cluster Role

resource "aws_iam_role" "eks_cluster_role" {

  name = "gitops-eks-cluster-role"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {
        Effect = "Allow"

        Principal = {
          Service = "eks.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Policy Attachments

resource "aws_iam_role_policy_attachment" "cluster_policies" {

  for_each = toset([
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  ])

  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = each.value
}

# Worker Node Role

resource "aws_iam_role" "node_role" {

  name = "gitops-node-role"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Worker node Policies

resource "aws_iam_role_policy_attachment" "worker_policies" {

  for_each = toset([

    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",

    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",

    "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  ])

  role       = aws_iam_role.node_role.name
  policy_arn = each.value
}


