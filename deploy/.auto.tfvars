# Key pairs
key_name = "deployer-key"
ssh_public_key_path = "ssh-key.pub"

# SG
sg_name       = "goweb-sg-nginx"
sg_description = "SG Nginx"
sg_tags          = { Name = "SG Nginx"}
sg_ingres_values = [
    {
    description      = "WWW from Internet"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },{
    description      = "TLS from Internet"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },{
    description      = "JF SSH Access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["190.62.9.193/32"]
    }   
]


# EC2
ec2_name="nginx01"
ec2_instance_type = "t2.micro"
ami_filter_name=[ "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*" ]
ami_filter_owner = [ "099720109477" ] # Canonical
