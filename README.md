# 🚀 AWS Cloud Infrastructure Deployment Using Terraform

## 📌 Project Overview

This project demonstrates the deployment of AWS cloud infrastructure using Terraform (Infrastructure as Code).

The infrastructure includes a custom Amazon VPC, two subnets, an Internet Gateway, route tables, security groups, two Amazon EC2 instances, and an Amazon S3 bucket.

Two Apache web servers are deployed on Amazon EC2 using Terraform automation.

## 🛠️ Technologies Used

- ☁️ Amazon Web Services (AWS)
- 🏗️ Terraform (Infrastructure as Code)
- 🖥️ Amazon EC2
- 🌐 Amazon VPC
- 🔐 AWS Security Groups
- 🛣️ Route Tables
- 🌍 Internet Gateway
- 📦 Amazon S3
- 🐧 Ubuntu Linux
- 🌐 Apache Web Server
- 💻 Git and GitHub

## 🏗️ Infrastructure Components

| Component | Description |
|---|---|
| VPC | Custom Virtual Private Cloud |
| Subnets | Two subnets in separate Availability Zones |
| EC2 Instances | Two web server instances |
| Internet Gateway | Provides internet connectivity for eligible resources |
| Route Table | Controls network traffic routing |
| Security Group | Controls inbound and outbound traffic |
| S3 Bucket | Object storage resource |
| Apache | Hosts the web applications |
| Terraform | Automates infrastructure provisioning |

## 📸 Project Screenshots

### 1. Server 1 — Web Application

The first Apache web server is hosted on an Amazon EC2 instance provisioned using Terraform.

![Server 1 Web Application](screenshots/01-server-1.png)

### 2. Server 2 — Web Application

The second web server demonstrates the deployment of multiple web services on AWS.

![Server 2 Web Application](screenshots/02-server-2.png)

### 3. Terraform Infrastructure Deployment

Terraform successfully created the infrastructure resources.

![Terraform Apply Success](screenshots/03-terraform-apply.png)

**Deployment Result:**
- 11 resources added
- 0 resources changed
- 0 resources destroyed

### 4. Terraform Configuration Validation

Terraform validation confirms that the configuration is syntactically valid.

![Terraform Validate Success](screenshots/04-terraform-validate.png)

### 5. AWS EC2 Instances

The AWS Management Console displays the EC2 instances created for the project.

![AWS EC2 Instances](screenshots/05-ec2-instances.png)

### 6. Custom VPC Configuration

A custom VPC was created to provide network isolation for the infrastructure.

![AWS VPC](screenshots/06-vpc.png)

### 7. Subnet Configuration

Two subnets were configured within the custom VPC.

![AWS Subnets](screenshots/07-subnets.png)

### 8. Route Table Configuration

A custom route table was created and associated with the project subnets.

![AWS Route Tables](screenshots/08-route-tables.png)

### 9. Internet Gateway

An Internet Gateway was attached to the custom VPC.

![AWS Internet Gateway](screenshots/09-internet-gateway.png)

## ⚙️ Terraform Deployment Steps

### Step 1: Clone the Repository

```bash
git clone <YOUR_GITHUB_REPOSITORY_URL>
cd <YOUR_PROJECT_DIRECTORY>
```

### Step 2: Initialize Terraform

```bash
terraform init
```

This initializes Terraform and downloads the required providers.

### Step 3: Validate the Configuration

```bash
terraform validate
```

This checks the Terraform configuration for syntax and consistency errors.

### Step 4: Review the Execution Plan

```bash
terraform plan
```

This previews the infrastructure changes Terraform intends to make.

### Step 5: Deploy the Infrastructure

```bash
terraform apply
```

Review the plan and type `yes` when prompted to approve the deployment.

### Step 6: Verify the Deployment

Check the EC2 instances in the AWS Management Console and open the public IP addresses of the web servers in a browser.

## 🌐 Web Server Verification

After deployment, verify that both web servers are accessible.

- **Server 1:** Open the public IPv4 address of the first EC2 instance.
- **Server 2:** Open the public IPv4 address of the second EC2 instance.

The expected result is that both servers display the Terraform Project web page.

Public IP addresses can change when instances are stopped and started, depending on their configuration.

## 🧹 Clean Up Resources

To remove the infrastructure created by Terraform when it is no longer needed, run:

```bash
terraform destroy
```

Review the proposed changes and type `yes` to confirm.

**Note:** This command can delete resources managed by the current Terraform state. Verify the plan before approving it.

## 🔒 Security Best Practices

- Never commit AWS access keys or secret keys.
- Never upload private SSH keys (`.pem` files).
- Do not commit Terraform state files.
- Keep sensitive variable values out of GitHub.
- Restrict SSH access to trusted IP addresses.
- Allow only the network traffic required by the application.
- Review AWS resources regularly to avoid unexpected charges.

## 🎯 Project Objectives

- Understand Infrastructure as Code using Terraform.
- Provision AWS resources automatically.
- Configure a custom VPC and subnets.
- Deploy multiple EC2 web servers.
- Configure network routing and security groups.
- Host web applications using Apache.
- Validate and manage infrastructure using Terraform commands.
- Document cloud infrastructure projects using GitHub.

## 👨‍💻 Author

Salauddin

Cloud Computing | AWS | Terraform | Infrastructure as Code

---
