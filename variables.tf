
variable "aws_region" {
	default = "us-west-2"
}

variable "aws_amis" {

	default = {
		"us-east-1" = "ami-5f709f34"
		"us-west-2" = "ami-7f675e4f"
	}

}

variable "key_name" {
	default = "awskey"
}
