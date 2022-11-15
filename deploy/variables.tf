# Key Pair
variable "key_name" {
  type = string
}

variable "ssh_public_key_path" {
  type = string
}

# SG
variable "sg_name" {

}

variable "sg_description" {

}

variable "sg_tags" {

}

variable "sg_ingres_values" {

}

# EC2
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