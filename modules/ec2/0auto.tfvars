key_id="deployer-key"
sg_names=["goweb-sg-nginx"]
ec2_name="nginx01"
ec2_instance_type = "t2.micro"
ami_filter_name=[ "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*" ]
ami_filter_owner = [ "099720109477" ] # Canonical