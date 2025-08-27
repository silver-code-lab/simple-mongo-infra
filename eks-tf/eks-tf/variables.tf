variable "region" {
  type    = string
  default = "ap-south-1" # Mumbai
}

variable "cluster_name" {
  type    = string
  default = "simple-mongo-eks"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
