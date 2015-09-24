# Public subnets
resource "aws_subnet" "eu-west-1a-public" {
	vpc_id = "${aws_vpc.prod.id}"

	cidr_block = "10.0.0.0/24"
	availability_zone = "eu-west-1a"
}

resource "aws_subnet" "eu-west-1b-public" {
	vpc_id = "${aws_vpc.prod.id}"

	cidr_block = "10.0.2.0/24"
	availability_zone = "eu-west-1b"
}

# Private subsets

resource "aws_subnet" "eu-west-1a-private" {
	vpc_id = "${aws_vpc.prod.id}"

	cidr_block = "10.0.1.0/24"
	availability_zone = "eu-west-1a"
}

resource "aws_subnet" "eu-west-1b-private" {
	vpc_id = "${aws_vpc.prod.id}"

	cidr_block = "10.0.3.0/24"
	availability_zone = "eu-west-1b"
}

