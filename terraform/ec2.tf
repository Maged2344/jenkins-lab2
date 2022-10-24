resource "aws_instance" "bastion" {
  ami                    = "ami-08c40ec9ead489470"
  instance_type          = "t2.micro"
  subnet_id              = module.network.subnet_public1
  key_name = "megz"
  vpc_security_group_ids = [module.network.securityfroup_ssh]
  tags = {
    Name = "node 01"
  }
}

resource "aws_instance" "master" {
  ami                    = "ami-08c40ec9ead489470"
  instance_type          = "t2.micro"
  subnet_id              = module.network.subnet_public1
  key_name = "megz"
  vpc_security_group_ids = [module.network.securityfroup_ssh]
  tags = {
    Name = "master jenkin"
  }
}