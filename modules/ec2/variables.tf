variable "key_id" {
  type=string
}

variable "sg_names" {
  type = list(string)
}

variable "ec2_name" {
  type=string
}

variable "ec2_instance_type" {
  type = string
}

variable "ami_filter_name" {
  type=list(string)
}

variable "ami_filter_owner" {
  type=list(string)
}