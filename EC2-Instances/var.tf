variable "ami_id" {
  type    = string
  default = "ami-066784287e358dad1"
}

variable "itype" {
  type    = string
  default = "t2.micro"
}

variable "azone" {
  type    = string
  default = "us-east-1d"
}

variable "mykey" {
  type    = string
  default = "KeyPair"
}

variable "no_of_instances" {
  type    = number
  default = 2
}
