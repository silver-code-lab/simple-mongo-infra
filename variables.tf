variable "project_name" {
  description = "Project tag prefix"
  type        = string
  default     = "simple-mongo"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1" 
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing AWS Key Pair name in the chosen region"
  type        = string
}

variable "app_port" {
  description = "Application port to expose"
  type        = number
  default     = 8000
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH (22). Use your IPv4/32"
  type        = string
}

variable "allowed_app_cidr" {
  description = "CIDR allowed to access the app port"
  type        = string
  default     = "0.0.0.0/0"
}

variable "root_volume_size" {
  description = "Root EBS volume size (GB)"
  type        = number
  default     = 16
}

variable "allocate_eip" {
  description = "Allocate and associate Elastic IP"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)
  default     = {}
}
