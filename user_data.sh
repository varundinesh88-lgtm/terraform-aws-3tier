#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install nginx1 -y
sudo systemctl enable nginx
echo "<h1>Terraform Stage3 Fresh ASG Instance</h1>" | sudo tee /usr/share/nginx/html/index.html
sudo systemctl start nginx
