resource "aws_vpc" "upb_vpc" {
  cidr_block = "10.16.0.0/16"
  assign_generated_ipv6_cidr_block=true
  enable_dns_hostnames=true
  tags = {
      Name="upb_vpc"
  }
}
resource "aws_subnet" "sn_reserved_A" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.0.0/20"
  availability_zone="us-east-1a"

  tags = {
    Name = "sn-reserved-A"
  }
}
resource "aws_subnet" "sn_db_A" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.16.0/20"
  availability_zone="us-east-1a"

  tags = {
    Name = "sn-db-A"
  }
}
resource "aws_subnet" "sn_app_A" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.32.0/20"
  availability_zone="us-east-1a"

  tags = {
    Name = "sn-app-A"
  }
}
resource "aws_subnet" "sn_web_A" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.48.0/20"
  availability_zone="us-east-1a"

  tags = {
    Name = "sn-web-A"
  }
}



resource "aws_subnet" "sn_reserved_B" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.64.0/20"
  availability_zone="us-east-1b"

  tags = {
    Name = "sn-reserved-B"
  }
}
resource "aws_subnet" "sn_db_B" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.80.0/20"
  availability_zone="us-east-1b"

  tags = {
    Name = "sn-db-B"
  }
}
resource "aws_subnet" "sn_app_B" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.96.0/20"
  availability_zone="us-east-1b"

  tags = {
    Name = "sn-app-B"
  }
}
resource "aws_subnet" "sn_web_B" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.112.0/20"
  availability_zone="us-east-1b"

  tags = {
    Name = "sn-web-B"
  }
}




resource "aws_subnet" "sn_reserved_C" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.128.0/20"
  availability_zone="us-east-1c"

  tags = {
    Name = "sn-reserved-C"
  }
}
resource "aws_subnet" "sn_db_C" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.144.0/20"
  availability_zone="us-east-1c"

  tags = {
    Name = "sn-db-C"
  }
}
resource "aws_subnet" "sn_app_C" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.160.0/20"
  availability_zone="us-east-1c"

  tags = {
    Name = "sn-app-C"
  }
}
resource "aws_subnet" "sn_web_C" {
  vpc_id     = aws_vpc.upb_vpc.id
  cidr_block = "10.16.176.0/20"
  availability_zone="us-east-1c"

  tags = {
    Name = "sn-web-C"
  }
}
