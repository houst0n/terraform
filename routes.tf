# Routing table for public subnets

resource "aws_route_table" "eu-west-1-public" {
	vpc_id = "${aws_vpc.default.id}"

	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = "${aws_internet_gateway.default.id}"
	}
}

resource "aws_route_table_association" "eu-west-1a-public" {
	subnet_id = "${aws_subnet.eu-west-1a-public.id}"
	route_table_id = "${aws_route_table.eu-west-1-public.id}"
}

resource "aws_route_table_association" "eu-west-1b-public" {
	subnet_id = "${aws_subnet.eu-west-1b-public.id}"
	route_table_id = "${aws_route_table.eu-west-1-public.id}"
}

# Routing table for private subnets

resource "aws_route_table" "eu-west-1-private" {
	vpc_id = "${aws_vpc.default.id}"

	route {
		cidr_block = "0.0.0.0/0"
		instance_id = "${aws_instance.nat.id}"
	}
}

resource "aws_route_table_association" "eu-west-1a-private" {
	subnet_id = "${aws_subnet.eu-west-1a-private.id}"
	route_table_id = "${aws_route_table.eu-west-1-private.id}"
}

resource "aws_route_table_association" "eu-west-1b-private" {
	subnet_id = "${aws_subnet.eu-west-1b-private.id}"
	route_table_id = "${aws_route_table.eu-west-1-private.id}"
}

