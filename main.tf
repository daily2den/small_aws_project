provider "aws" {
	region = "us-west-2"
}

resource "aws_instance" "simpleinstance" {

	ami = "${lookup(var.aws_amis, var.aws_region)}"
	instance_type = "t2.micro"
	user_data = "${file("userdata.sh")}"
	key_name = "${var.key_name}"

	security_groups = [ "allow_in_out" ]

	tags {
		Name = "PlayQ 2019!"
		Type = "webserver"
	}

}

resource "aws_security_group" "allow_in_out" {
	name = "allow_in_out"

	ingress {
		from_port = 0
		to_port = 22
		protocol = "tcp"
		cidr_blocks = [ "76.169.181.157/32", "178.150.253.6/32" ]
	}

	ingress {
		from_port = 0
		to_port = 80
		protocol = "tcp"
		cidr_blocks = [ "0.0.0.0/0" ]
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = [ "0.0.0.0/0" ]
	}

}
