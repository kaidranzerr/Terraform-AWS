
variable "environment" { 
    default = "dev"
    type = string 
}

# if we wanna access the variable just type in var.environment 
# tags are labels for the resources
tags = {
    Environment = var.environment
    Name = "Dev-EC2-Instance"
} 

locals {
    bucket_name = "${var.channel_name}-bucket-${var.environment}"
    vpc_name = "${var.environment}-VPC"
}

# tf output show --> to see all the variables we created
# at the end of demo do destroy the resources  --> tf destroy