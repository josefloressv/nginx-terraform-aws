data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = var.ami_filter_name
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = var.ami_filter_owner
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.ec2_instance_type
  key_name = var.key_id
  security_groups = var.sg_names

  tags = {
    Name = var.ec2_name
  }
}
