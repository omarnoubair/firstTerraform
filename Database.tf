
###################################################################################
###################################################################################
###########                                                   #####################
###########                        RDS                        #####################
###########                                                   #####################
###################################################################################
###################################################################################

# Create Database Subnet Group
# terraform aws db subnet group
/*resource "aws_db_subnet_group" "database-subnet-group" {
  name         = "database subnets"
  subnet_ids   = [aws_subnet.private-subnet-3.id, aws_subnet.private-subnet-2.id,aws_subnet.private-subnet-1.id]
  description  = "Subnets for Database Instance"
  tags   = {
    Name = "Database Subnets TF"
  } 
}

# Get the Latest DB Snapshot
# terraform aws data db snapshot
# data "aws_db_snapshot" "latest-db-snapshot" {
#   db_snapshot_identifier = "${var.database-snapshot-identifier}"
#   most_recent            = true
#   snapshot_type          = "manual"
# } 

# Create Database Instance Restored from DB Snapshots
# terraform aws db instance
resource "aws_db_instance" "database-instance-prod" {
  allocated_storage         = 10 #GB
  engine                    = "mysql"
  username                  = "${var.database-user}"
  password                  = "${var.database-pwd}"
  instance_class            = "${var.database-instance-prod-class}"
  skip_final_snapshot       = true //false : crée un snapshot a supression, si true ne crée pas
  availability_zone         = "${var.subnet-1}"
  identifier                = "${var.database-instance-prod-identifier}"
  # final_snapshot_identifier = "${var.database-instance-identifier}"
  # snapshot_identifier       = data.aws_db_snapshot.latest-db-snapshot.id
  db_subnet_group_name      = aws_db_subnet_group.database-subnet-group.name
  multi_az                  = "${var.multi-az-deployment}"
  vpc_security_group_ids    = [aws_security_group.sg_oregon.id]
}


resource "aws_db_instance" "database-instance-dev" {
  allocated_storage         = 10 #GB
  engine                    = "mysql"
  username                  = "${var.database-user}"
  password                  = "${var.database-pwd}"
  instance_class            = "${var.database-instance-dev-class}"
  skip_final_snapshot       = true //false : crée un snapshot a supression, si true ne crée pas
  availability_zone         = "${var.subnet-2}"
  identifier                = "${var.database-instance-dev-identifier}"
  # final_snapshot_identifier = "${var.database-instance-identifier}"
  # snapshot_identifier       = data.aws_db_snapshot.latest-db-snapshot.id
  db_subnet_group_name      = aws_db_subnet_group.database-subnet-group.name
  multi_az                  = "${var.multi-az-deployment}"
  vpc_security_group_ids    = [aws_security_group.sg_oregon.id]
}*/
