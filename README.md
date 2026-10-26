
# AWS Cloud Infrastructure Deployment Using Terraform

A hands-on project that provisions AWS infrastructure using Terraform (Infrastructure as Code) and deploys two Apache web servers with custom HTML/CSS landing pages.

## Project Objectives

- Create a custom VPC (`10.0.0.0/16`).
- Configure two public subnets across Availability Zones.
- Set up an Internet Gateway and public route table.
- Configure a security group for web access and administration.
- Launch two EC2 instances with Apache using user-data scripts.
- Create an Amazon S3 bucket.


## Architecture

- **VPC:** `10.0.0.0/16`
- **Public Subnet 1:** `10.0.1.0/24` — `ap-south-1a`
- **Public Subnet 2:** `10.0.2.0/24` — `ap-south-1b`
- **Compute:** Two EC2 instances running Apache
- **Storage:** Amazon S3
- **Region:** `ap-south-1` (Mumbai)

## Technologies

- AWS (EC2, VPC, S3, Security Groups)
- Terraform
- Apache HTTP Server
- Bash, HTML, and CSS

## Deployment

Prerequisites: Terraform, AWS credentials, and permissions to create the required resources.

Run these commands from the project directory:

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
