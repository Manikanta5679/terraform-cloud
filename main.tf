provider "aws"{
    region = "ap-southeast-1"
}
resource "aws_vpc" "cloud_vpc"{
    cidr_block = var.vpc_cidr

    tags = {
        Name = "vpc-${var.env}"
    }
}

resource "aws_subnet" "subnets"{
    count = length(var.subnet_cidrs)
    vpc_id = aws_vpc.cloud_vpc.id
    cidr_block = var.subnet_cidrs[count.index]
    availability_zone = var.azs[count.index]

    tags = {
        Name = "subnet-${var.env}-${count.index}"
    }
}