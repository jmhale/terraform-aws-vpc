# VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name       = "${var.env}-vpc"
    Project    = "common"
    tf-managed = "True"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name       = "${var.env}-igw"
    Project    = "common"
    tf-managed = "True"
  }
}

# Public subnets
resource "aws_subnet" "subnet_public_a" {
  vpc_id = aws_vpc.vpc.id

  cidr_block        = var.subnet_cidr_public_a
  availability_zone = "${var.region}a"

  tags = {
    Name       = "${var.env}-public-${var.region}a"
    Project    = "common"
    tf-managed = "True"
  }
}

resource "aws_subnet" "subnet_public_b" {
  vpc_id = aws_vpc.vpc.id

  cidr_block        = var.subnet_cidr_public_b
  availability_zone = "${var.region}b"

  tags = {
    Name       = "${var.env}-public-${var.region}b"
    Project    = "common"
    tf-managed = "True"
  }
}

resource "aws_subnet" "subnet_public_c" {
  vpc_id = aws_vpc.vpc.id

  cidr_block        = var.subnet_cidr_public_c
  availability_zone = "${var.region}c"

  tags = {
    Name       = "${var.env}-public-${var.region}c"
    Project    = "common"
    tf-managed = "True"
  }
}

# Private subnets
resource "aws_subnet" "subnet_private_a" {
  vpc_id = aws_vpc.vpc.id

  cidr_block        = var.subnet_cidr_private_a
  availability_zone = "${var.region}a"

  tags = {
    Name       = "${var.env}-private-${var.region}a"
    Project    = "common"
    tf-managed = "True"
  }
}

resource "aws_subnet" "subnet_private_b" {
  vpc_id = aws_vpc.vpc.id

  cidr_block        = var.subnet_cidr_private_b
  availability_zone = "${var.region}b"

  tags = {
    Name       = "${var.env}-private-${var.region}b"
    Project    = "common"
    tf-managed = "True"
  }
}

resource "aws_subnet" "subnet_private_c" {
  vpc_id = aws_vpc.vpc.id

  cidr_block        = var.subnet_cidr_private_c
  availability_zone = "${var.region}c"

  tags = {
    Name       = "${var.env}-private-${var.region}c"
    Project    = "common"
    tf-managed = "True"
  }
}

# Route tables
resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name       = "${var.env}-rtb-public"
    Project    = "common"
    tf-managed = "True"
  }
}

resource "aws_route_table_association" "rtb_public_a" {
  subnet_id      = aws_subnet.subnet_public_a.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rtb_public_b" {
  subnet_id      = aws_subnet.subnet_public_b.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rtb_public_c" {
  subnet_id      = aws_subnet.subnet_public_c.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table" "rtb_private" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name       = "${var.env}-rtb-private"
    Project    = "common"
    tf-managed = "True"
  }
}

resource "aws_route_table_association" "rtb_private_a" {
  subnet_id      = aws_subnet.subnet_private_a.id
  route_table_id = aws_route_table.rtb_private.id
}

resource "aws_route_table_association" "rtb_private_b" {
  subnet_id      = aws_subnet.subnet_private_b.id
  route_table_id = aws_route_table.rtb_private.id
}

resource "aws_route_table_association" "rtb_private_c" {
  subnet_id      = aws_subnet.subnet_private_c.id
  route_table_id = aws_route_table.rtb_private.id
}

