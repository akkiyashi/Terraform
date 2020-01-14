resource "aws_instance" "webserver"{
	count = "${var.countno}"
	ami = "${var.amiid}"
	instance_type = "${var.i_type}"
	subnet_id = "${var.subnet_id}"
	tags = {
	Name = "Webserver"
	}
}

