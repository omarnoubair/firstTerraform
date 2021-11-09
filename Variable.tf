###################################################################################
###################################################################################
###########                                                   #####################
###########                     VARIABLE                      #####################
###########                                                   #####################
###################################################################################
###################################################################################
/*
variable "region" {
  default       = "us-east-1"
  description   = "AWS Region"
  type          = string
}
variable "aws_access_key" {
  default       = "AKIATI7HLWARFZ6KDAGE"
  description   = "AWS Region"
  type          = string
}
variable "aws_secret_key" {
  default       = "r4M8Mon8dxSLTDdFdLktUnkf7ISqbCc2k+9zKqVu"
  description   = "AWS Region"
  type          = string
}*/
variable "vpc-cidr" {
  default       = "10.0.0.0/16"
  description   = "VPC CIDR Block"
  type          = string
}
variable "public-subnet-1-cidr" {
  default       = "10.0.0.0/24"
  description   = "Public Subnet 1 CIDR Block"
  type          = string
}
variable "public-subnet-2-cidr" {
  default       = "10.0.1.0/24"
  description   = "Public Subnet 2 CIDR Block"
  type          = string
}
variable "private-subnet-1-cidr" {
  default       = "10.0.2.0/24"
  description   = "Private Subnet 1 CIDR Block"
  type          = string
}
variable "private-subnet-2-cidr" {
  default       = "10.0.3.0/24"
  description   = "Private Subnet 2 CIDR Block"
  type          = string
}
variable "private-subnet-3-cidr" {
  default       = "10.0.4.0/24"
  description   = "Private Subnet 3 CIDR Block"
  type          = string
}
variable "ssh-location" {
  default       = "0.0.0.0/0"
  description   = "IP Adress that can SSH Into EC2 Instance"
  type          = string
}
variable "database-snapshot-identifier" {
  default       = "arn:aws:rds:us-east-1:839815258229:snapshot:prod"#"ARN RDS SNAPSHOT VALUE"
  description   = "The Database Snapshot ARN"
  type          = string
}
variable "database-instance-prod-class" {
  default       = "db.r5.xlarge"
  description   = "The Database Instance Type"
  type          = string
}
variable "database-instance-dev-class" {
  default       = "db.t2.micro"
  description   = "The Database Instance Type"
  type          = string
}
variable "database-instance-prod-identifier" {
  default       = "prod"
  description   = "The Database Instance Identifier"
  type          = string
}
variable "database-instance-dev-identifier" {
  default       = "dev"
  description   = "The Database Instance Identifier"
  type          = string
}
variable "multi-az-deployment" {
  default       = false
  description   = "Create a Standly DB Instance"
  type          = bool
}
variable "database-user" {
  default       = "user"
  description   = "Database User"
  type          = string
} 
variable "database-pwd" {
  default       = "password"
  description   = "Database Password"
  type          = string
} 


variable "vpc-region" {
  default       = "eu-west-1"
  description   = "Region VPC"
  type          = string
} 

variable "subnet-1" {
  default       = "eu-west-1a"
  description   = "Region Subnet 1"
  type          = string
} 

variable "subnet-2" {
  default       = "eu-west-1b"
  description   = "Region Subnet 2"
  type          = string
} 

variable "subnet-3" {
  default       = "eu-west-1c"
  description   = "Region Subnet 3"
  type          = string
} 

