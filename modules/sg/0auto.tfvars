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