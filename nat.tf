resource "aws_eip" "nat4" {
  vpc = true

  tags = {
    Owner = "Scardenas"
    Project = "T1 to T2 learning path"
    Name = "task 4.1"
  }
}

resource "aws_nat_gateway" "nat4" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Owner = "Scardenas"
    Project = "T1 to T2 learning path"
    Name = "task 4.1"
  }

  depends_on = [aws_internet_gateway.igw]
}