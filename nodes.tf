resource "aws_eks_node_group" "private-nodes" {
  cluster_name    = aws_eks_cluster.eks4.name
  node_group_name = "private-nodes"
  node_role_arn   = "arn:aws:iam::113304117666:role/AmazonEKSNodeRole"

  subnet_ids = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id
  ]

  capacity_type  = "ON_DEMAND"
  instance_types = ["t3.small"]

  scaling_config {
    desired_size = 1
    max_size     = 5
    min_size     = 0
  }

  update_config {
    max_unavailable = 1
  }

  labels = {
    role = "general"
  }

   tags {
    Owner = "Scardenas"
    Project = "T1 to T2 learning path"
    Name = "tf_cluster" 
   }

}