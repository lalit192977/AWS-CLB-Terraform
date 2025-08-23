#================================= for terraform provider =========================================
variable "access_key" {
  type        = string
  description = "this is the access key for aws-provider"
}
variable "secret_key" {
  type        = string
  description = "this is the secret key for aws-provider"
}
variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "Region to create/set your infrastructure"
}




# ====================================== security groups ========================================
variable "sg_classic" {
  type        = string
  default     = "classic-web-sg"
  description = "This is the security group for classic load balancer"
}

variable "sg_instance" {
  type        = string
  default     = "instance-web-sg"
  description = "This is the security group for instances"
}



# ===================================== AWS instances ================================
variable "ami_id" {
  type        = string
  default     = "ami-02d26659fd82cf299"
  description = "This is the ami of the os type"
}
variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The type of the ec2-instance"
}

# ==================================== classic elb =========================================
variable "elb_name" {
  type        = string
  default     = "classic-web-elb"
  description = "This is the classic load-balancer name"
}