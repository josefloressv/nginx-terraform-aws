
module "kp_main" {
    source = "../modules/key_pair"
    key_name = var.key_name
    ssh_public_key_path =var.ssh_public_key_path
}

module "sg_main" {
  source = "../modules/sg"
  sg_name = var.sg_name
  sg_description = var.sg_description
  sg_tags = var.sg_tags
  sg_ingres_values = var.sg_ingres_values
}

# Ubuntu default
module "ec2_1" {
  source = "../modules/ec2"
  ec2_name = var.ec2_name
  ec2_instance_type = var.ec2_instance_type  
  key_id = module.kp_main.key_id
  sg_names = [ module.sg_main.sg_name ]
  ami_filter_name = var.ami_filter_name
  ami_filter_owner = var.ami_filter_owner
}

# Amazon Linux
module "ec2_2" {
  source = "../modules/ec2"
  ec2_name = "nginx02"
  ec2_instance_type = var.ec2_instance_type  
  key_id = module.kp_main.key_id
  sg_names = [ module.sg_main.sg_name ]
  ami_filter_name = ["amzn2-ami-kernel-5.10-hvm-2.0.20221004.0-x86_64-gp2"]
  ami_filter_owner = ["137112412989"]
}
