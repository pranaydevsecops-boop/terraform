variable "instances_example" {
    type = map(string)
    default = {
        magodb = "t3.micro"
        sql = "t3.small"
        rabbitmq = "t3.micro"
    }
}

variable "zone_id" {
    default = "Z0303145GTQW9UDY5SYP"
}

variable "domain_name" {
    default = "pranaydevsecops.online"
}