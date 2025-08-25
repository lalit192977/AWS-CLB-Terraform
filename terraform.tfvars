# ===================================== for terraform provider =====================================
access_key = "your aws access key"
secret_key = "your aws secret key"
region     = "ap-south-1"

# ====================================== for Security Group =======================================
sg_classic  = "classic-web-sg"
sg_instance = "instance-web-sg"


# ===================================== for instances =============================================
ami_id        = "ami-02d26659fd82cf299"
instance_type = "t3.micro"


# ===================================== classic elb =============================================
elb_name = "classic-web-elb"