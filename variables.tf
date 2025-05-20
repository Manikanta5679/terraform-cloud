variable "env"{
    type = string
}
variable "vpc-cidr"{
    type = string
}
variable "subnet_cidrs"{
    type = list(string)
}
variable "azs"{
    type = list(string)
}
