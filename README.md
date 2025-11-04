Terraform AWS 3-Tier Architecture – README Portfolio

1. Project Overview

This project demonstrates the deployment of a highly available and scalable 3-Tier Architecture on AWS using Terraform. The setup includes a Load Balancer, Auto Scaling Group, and RDS MySQL database. The infrastructure was provisioned entirely through Infrastructure as Code (IaC) principles, ensuring reusability, consistency, and automation.
[Insert Screenshot: Terraform AWS 3-Tier Architecture Diagram]

2. Tech Stack

- Terraform (IaC)
- AWS EC2, ALB, Auto Scaling, RDS (MySQL)
- VPC, Subnets, Security Groups
- GitHub for version control
- Ubuntu EC2 instance for deployment

3. Architecture

The architecture is divided into three tiers:
• Web Tier – Handles incoming traffic through an Application Load Balancer (ALB) and routes it to EC2 instances.
• Application Tier – EC2 instances deployed within an Auto Scaling Group to ensure availability and scalability.
• Database Tier – Amazon RDS MySQL instance hosted in private subnets for secure data storage.

Terraform provisions all required components including VPC, subnets, route tables, security groups, and the associated compute resources.
[Insert Screenshot: VPC Setup Diagram]

4. Implementation Steps

1.	1. Created a dedicated VPC with public and private subnets.
2.	2. Configured Internet Gateway, Route Tables, and Security Groups.
3.	3. Deployed an Application Load Balancer in public subnets.
4.	4. Created a Launch Template for EC2 instances with user data for app setup.
5.	5. Configured Auto Scaling Group for instance scalability.
6.	6. Provisioned RDS MySQL instance in private subnet.
7.	7. Connected EC2 instances with RDS database.
8.	8. Validated load balancer and database connections.
9.	9. Pushed Terraform configurations to GitHub for version control.
[Insert Screenshot: Terraform init/plan/apply Output]
[Insert Screenshot: EC2 Instances Running in Console]
[Insert Screenshot: Load Balancer Healthy Targets View]
[Insert Screenshot: Auto Scaling Group Activity Logs]
[Insert Screenshot: RDS Instance Console View]
[Insert Screenshot: MySQL Database Connection Test]
[Insert Screenshot: GitHub Repository Push Confirmation]

5. Terraform Code Structure

• vpc.tf – Defines VPC, subnets, and networking components.
• security-groups.tf – Defines all security groups.
• launch-asg.tf – Creates launch template and auto scaling group.
• alb.tf – Defines Application Load Balancer and target groups.
• rds.tf – Provisions MySQL database instance.
• variables.tf & outputs.tf – Handle input variables and output values.
• provider.tf – Defines AWS provider configuration.

6. Testing and Validation

Once the infrastructure was deployed, validation was performed by accessing the Application Load Balancer DNS to verify web app availability. The MySQL database connection was tested using the RDS endpoint to confirm proper communication from the application layer.
[Insert Screenshot: Web App Access via Load Balancer DNS]
[Insert Screenshot: MySQL Test Database Query Output]

7. Key Learnings

- End-to-end infrastructure automation using Terraform.
- Managing dependencies between multi-tier AWS resources.
- Handling VPC networking and security groups efficiently.
- Automating app deployment via user data.
- Working with Git versioning and IaC best practices.

8. Result

Successfully deployed a resilient and production-style 3-tier AWS architecture using Terraform. All resources were managed and version-controlled through GitHub, with validation confirmed via the ALB endpoint and MySQL database connection.
[Insert Screenshot: MySQL testdb verification]
11. Conclusion
This project showcases practical expertise in Infrastructure as Code (IaC) using Terraform, along with AWS architecture design and automation principles. The resulting infrastructure is scalable, secure, and demonstrates the complete lifecycle of a 3-tier cloud deployment.
