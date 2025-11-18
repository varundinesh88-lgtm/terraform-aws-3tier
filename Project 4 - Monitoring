# Terraform AWS Monitoring & Logging (Goal 5)

This project adds monitoring, logging, and alerting to the AWS 3-Tier Architecture (Goal 4). It integrates AWS CloudWatch for system metrics and alarms, with SNS for automated email alerts.

### Overview

We enhanced the 3-Tier setup (VPC, ALB, ASG, RDS) to include AWS CloudWatch monitoring, ALB logging to S3, and SNS notifications for alarm states such as CPU spikes or HTTP 5xx errors.

### Architecture Components

• VPC with two public subnets
• Application Load Balancer with access logging to S3
• Auto Scaling Group for EC2 instances
• RDS MySQL database instance
• CloudWatch Alarms for CPUUtilization and ALB 5xx errors
• SNS Topic for email notifications on alarm triggers

### Implementation Steps

1. Reuse Terraform Code from Goal 4

Cloned existing repository and redeployed the 3-tier architecture with Terraform apply.

2. Add CloudWatch Alarms

Created alarms and metrics for ALB 5XX errors and EC2 CPU utilization.
<img width="1920" height="1080" alt="2" src="https://github.com/user-attachments/assets/c06ec25d-76c5-4959-a364-fb95146181b3" />
<img width="1920" height="1080" alt="3" src="https://github.com/user-attachments/assets/9ec0c317-7938-4d22-8f0c-984863d36997" />

3. Configure ALB Access Logs

Enabled ALB access logging to S3 bucket.
<img width="1920" height="1080" alt="1" src="https://github.com/user-attachments/assets/3fd3e558-ad18-4305-87e4-b7f47f729f3d" />

4. Create SNS Topic for Notifications

Configured SNS topic for alert delivery and confirmed email subscription.
<img width="1920" height="1080" alt="4" src="https://github.com/user-attachments/assets/aba643c3-64c3-4ec2-a636-a9497d3a0ad9" />

### Verification Steps

1. Confirm SNS subscription via email.

2. Trigger a test alarm by adjusting CPU utilization or health checks.

3. Verify SNS email notifications are received.

4. View ALB access logs stored in S3.

5. Confirm CloudWatch metrics update in real time.

### Conclusion

With this, the AWS 3-Tier Architecture is now fully observable and alert-enabled. This showcases Terraform automation, AWS CloudWatch monitoring, and SNS alerting.
