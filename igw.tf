resource "aws_internet_gateway" "igw4" {
  vpc_id = aws_vpc.vpc4.id

  tags = {
    Owner = "Scardenas"
    Project = "T1 to T2 learning path"
    Name = "task 4.1"
  }
}