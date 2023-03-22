resource "aws_eks_cluster" "eks4" {
  name     = "eks4"
  Owner    = "Scardenas"
  Project  = "T1 to T2 learning path
  role_arn = "arn:aws:iam::113304117666:role/eksClusterRole"

  vpc_config {
    subnet_ids = [
      aws_subnet.private-us-east-1a.id,
      aws_subnet.private-us-east-1b.id,
      aws_subnet.public-us-east-1a.id,
      aws_subnet.public-us-east-1b.id
    ]
  }

}