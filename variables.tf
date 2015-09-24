variable "access_key" {}
variable "secret_key" {}
variable "aws_ubuntu_ami" {
    default = "ami-47a23a30"
}
variable "aws_nat_ami" {
    default = "ami-30913f47"
}
variable "keypair" {
    default = "nhdev"
}
variable "region" {
    default = "eu-west-1"
}

