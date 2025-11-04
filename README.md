# Project 1 - 3-Tier Architecture using Terraform (IaC)
## Terraform AWS 3-Tier Architecture

### _**Project Overview**_

This project demonstrates the deployment of a highly available and scalable 3-Tier Architecture on AWS using Terraform. The setup includes a Load Balancer, Auto Scaling Group, and RDS MySQL database. The infrastructure was provisioned entirely through Infrastructure as Code (IaC) principles, ensuring reusability, consistency, and automation.

Terraform AWS 3-Tier Architecture

<img width="500" height="750" alt="Architecture" src="https://github.com/user-attachments/assets/a20f7358-73aa-46ec-a757-332697533298" />


### _**Tech Stack**_

- Terraform (IaC)
- AWS EC2, ALB, Auto Scaling, RDS (MySQL)
- VPC, Subnets, Security Groups
- GitHub for version control
- Ubuntu EC2 instance for deployment

### _**Architecture**_

The architecture is divided into three tiers:
* Web Tier – Handles incoming traffic through an Application Load Balancer (ALB) and routes it to EC2 instances.
* Application Tier – EC2 instances deployed within an Auto Scaling Group to ensure availability and scalability.
* Database Tier – Amazon RDS MySQL instance hosted in private subnets for secure data storage.

Terraform provisions all required components including VPC, subnets, route tables, security groups, and the associated compute resources.

Terraform File Structure
<img width="1920" height="1080" alt="1" src="https://github.com/user-attachments/assets/d708a9df-e377-4af8-94fb-6d70c7dd152f" />


### _**Implementation Steps**_
* Created a dedicated VPC with public and private subnets.
* Configured Internet Gateway, Route Tables, and Security Groups.
* Deployed an Application Load Balancer in public subnets.
* Created a Launch Template for EC2 instances with user data for app setup.
* Configured Auto Scaling Group for instance scalability.
* Provisioned RDS MySQL instance in private subnet.
* Connected EC2 instances with RDS database.
* Validated load balancer and database connections.
* Pushed Terraform configurations to GitHub for version control.

Terraform init/plan/apply Output
<img width="1920" height="1080" alt="2" src="https://github.com/user-attachments/assets/baa8d3e5-f0df-4050-97b5-44a43de99ef7" />
<img width="1920" height="1080" alt="3" src="https://github.com/user-attachments/assets/ed7a5543-1e6b-437a-bf4e-9a5683347e72" />

EC2 Instances
<img width="1920" height="1080" alt="6" src="https://github.com/user-attachments/assets/7956a241-1987-4989-aeee-0e041544db25" />

Load Balancer
<img width="1920" height="1080" alt="7" src="https://github.com/user-attachments/assets/5b2c11cc-15d7-4de3-a40d-bae10b5794f9" />

VPC and Subnets
<img width="1920" height="1080" alt="4" src="https://github.com/user-attachments/assets/9dbc882e-69a3-4d24-a9ab-698c0b3fd124" />

RDS Instance
<img width="1920" height="1080" alt="9" src="https://github.com/user-attachments/assets/1463ebdf-cae5-4845-a157-d59a6b232e99" />

GitHub Repository Push Confirmation
<img width="1920" height="1080" alt="12" src="https://github.com/user-attachments/assets/5bf760ba-b433-4457-9c93-39d63132657e" />


### _**Terraform Code Structure**_

* vpc.tf – Defines VPC, subnets, and networking components.
* security-groups.tf – Defines all security groups.
* launch-asg.tf – Creates launch template and auto scaling group.
* alb.tf – Defines Application Load Balancer and target groups.
* rds.tf – Provisions MySQL database instance.
* variables.tf & outputs.tf – Handle input variables and output values.
* provider.tf – Defines AWS provider configuration.

### _**Testing and Validation**_

Once the infrastructure was deployed, validation was performed by accessing the Application Load Balancer DNS to verify web app availability. The MySQL database connection was tested using the RDS endpoint to confirm proper communication from the application layer.

Web App Access via Load Balancer DNS
<img width="1920" height="1080" alt="11" src="https://github.com/user-attachments/assets/f933342f-b679-4321-8b0d-404b1e107f95" />

### _**Key Learnings**_

- End-to-end infrastructure automation using Terraform.
- Managing dependencies between multi-tier AWS resources.
- Handling VPC networking and security groups efficiently.
- Automating app deployment via user data.
- Working with Git versioning and IaC best practices.

### _**Result**_

Successfully deployed a resilient and production-style 3-tier AWS architecture using Terraform. All resources were managed and version-controlled through GitHub, with validation confirmed via the ALB endpoint and MySQL database connection.

MySQL testdb verification
<img width="1920" height="1080" alt="10" src="https://github.com/user-attachments/assets/28cd58c3-18d6-420b-a8f0-fcbbee084596" />

### _**Conclusion**_

This project showcases practical expertise in Infrastructure as Code (IaC) using Terraform, along with AWS architecture design and automation principles. The resulting infrastructure is scalable, secure, and demonstrates the complete lifecycle of a 3-tier cloud deployment.

