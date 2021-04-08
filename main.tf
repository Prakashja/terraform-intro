provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}


resource "aws_instance" "myinstance" {
  ami             = var.instance_ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet
  security_groups = [var.security_group]
  key_name        = var.instance_key

  tags = {
    Name      = "myec2-instances"
    Builder   = "terraform"
    App       = "myapp"
    owner     = "jayaprakahs.k"
    contact   = "jai@gmail.com"
  }
}
