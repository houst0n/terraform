resource "aws_eip" "nat" {
	instance = "${aws_instance.nat.id}"
	vpc = true
}

resource "aws_eip" "bastion" {
	instance = "${aws_instance.bastion.id}"
	vpc = true
}

resource "aws_eip" "jenkins" {
	instance = "${aws_instance.jenkins.id}"
	vpc = true
}

