resource "aws_instance" "demo"{
  ami = var.ami_id
  # if dev t3.micro or t3.small

  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = var.t_tags

}

resource "aws_security_group" "allow_tls" {
  name        = var.sg_name 
  description = var.sg_description
   egress {
    from_port        = var.in_port
    to_port          = var.out_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.in_port
    to_port          = var.out_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
}