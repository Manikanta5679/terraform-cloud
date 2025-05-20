variable "env"{}
variable "vpc-cidr"{}
variable "subnet_cidrs"{
    type = list(string)
}
variable "azs"{
    type = list(string)
}