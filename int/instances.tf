resource "aws_instance" "nat" {
	ami = "${var.aws_nat_ami}"
	availability_zone = "eu-west-1a"
	instance_type = "m1.small"
	key_name = "${var.keypair}"
	security_groups = ["${aws_security_group.nat.id}"]
	subnet_id = "${aws_subnet.eu-west-1a-public.id}"
	associate_public_ip_address = true
	source_dest_check = false
}

resource "aws_instance" "bastion" {
	ami = "${var.aws_ubuntu_ami}"
	availability_zone = "eu-west-1a"
	instance_type = "t2.micro"
	key_name = "${var.keypair}"
	security_groups = ["${aws_security_group.bastion.id}"]
	subnet_id = "${aws_subnet.eu-west-1a-public.id}"
}

resource "aws_instance" "jenkins" {
	ami = "${var.aws_ubuntu_ami}"
	availability_zone = "eu-west-1a"
	instance_type = "t2.micro"
	key_name = "${var.keypair}"
	security_groups = ["${aws_security_group.jenkins.id}"]
	subnet_id = "${aws_subnet.eu-west-1a-public.id}"
  tags {
      Role = "jenkins"
  }
}

