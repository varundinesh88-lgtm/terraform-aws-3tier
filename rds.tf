# Create DB subnet group using public subnets (for testing/demo)
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "${var.project_prefix}-db-subnet-group"
  subnet_ids = aws_subnet.public[*].id

  tags = {
    Name = "${var.project_prefix}-db-subnet-group"
  }
}

# Security Group for RDS
resource "aws_security_group" "rds_sg" {
  name        = "${var.project_prefix}-rds-sg"
  description = "Allow MySQL traffic from app EC2 SG"
  vpc_id      = aws_vpc.core.id

  ingress {
    description      = "MySQL from App Instance"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.instance_sg.id] # Link to EC2 SG
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_prefix}-rds-sg"
  }
}

# MySQL RDS Instance
resource "aws_db_instance" "mysql" {
  identifier              = "${var.project_prefix}-mysql"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  username                = "admin"
  password                = "Admin12345!"
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.rds_sg.id]
  publicly_accessible     = true
  skip_final_snapshot     = true

  tags = {
    Name = "${var.project_prefix}-mysql"
  }
}

# Output
output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}
