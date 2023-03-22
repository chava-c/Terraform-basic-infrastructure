resource "aws_vpc" "vpc4" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = "true"

  tags = {
    Owner = "Scardenas"
    Project = "T1 to T2 learning path"
    Name = "task 4.1"
  }
}