provider "aws" {
	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"
	region = "eu-west-1"
}

resource "aws_vpc" "prod" {
	cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "default" {
       vpc_id = "${aws_vpc.prod.id}"
}

