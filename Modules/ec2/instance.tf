resource "aws_instance" "webserver"{
	count = "${var.count}"
	ami = "${var.amiid}"
	instance_type = "${var.type}"
	subnet_id = "${var.subnet_id}"
	tags = {
	Name = "Webserver"
	}
}

