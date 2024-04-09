ami_image     = "ami-05c969369880fa2c2"
instance_type = "t2.micro"



inbound_rule = {
  allow_http_traffic = {

    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  allow_ssh_traffic = {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  allow_https_traffic = {

    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

subnet = {
  public_subnet = {

    cidr_block = "10.0.1.0/24"


    map_public_ip_on_launch = true


    availability_zone = "us-west-1c"

  }

  private_subnet = {

    cidr_block = "10.0.2.0/24"


    map_public_ip_on_launch = false


    availability_zone = "us-west-1b"

  }
}

vm = {
  public_vm = {

    ami                         = "ami-05c969369880fa2c2"
    instance_type               = "t2.micro"
    key_name                    = "mykey_jeffong"
    availability_zone           = "us-west-1c"
    subnet                      = "public_subnet"
    security_group              = "public_sg"
    associate_public_ip_address = true
  }

  private_vm = {

    ami                         = "ami-05c969369880fa2c2"
    instance_type               = "t2.micro"
    key_name                    = "mykey_jeffong"
    availability_zone           = "us-west-1b"
    subnet                      = "private_subnet"
    security_group              = "private_sg"
    associate_public_ip_address = false
  }
}