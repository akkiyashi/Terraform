resource "aws_vpc" "main" {
	cidr_block = "${var.cidr}"
	tags = {
		Name = "Main"
	}
}

resource "aws_subnet" "public_subnet"{
	vpc_id = "${var.vpcid}"
	cidr_block = "${var.subnet_cidr}"
}

output "vpc_id"{
	value = "${aws_vpc.main.id}"
}

output "subnet_id"{
	value = "${aws_subnet.public_subnet.id}"
}