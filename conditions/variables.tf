variable "environment" {
    default = "prod"
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "RHEL 9 AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "t3 value"  
}

variable "t_tags" {
    type = map
    default = {
        Name = "varaibles-demos"
        Project = "roboshop"
        Terraform = true
        Environment = "dev"
    }
}


variable "sg_name" {
    type = string
    default = "allow_all_terraform" 
}

variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}


variable "in_port" {
    type = number
    default = 0
}

variable "out_port" {
    type =  number
    default = 0
}

variable "sg_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}


variable "sg_tags" {
    type = map
    default = {
        Name = "allow_all_terraform"
        Project = "roboshop"
        Terraform = true
        Environment = "dev"
    }
  
}