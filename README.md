# 🚀 AWS 3-Tier Architecture using Terraform & CI/CD

This project demonstrates a complete **3-tier architecture on AWS** using Terraform, including networking, compute, load balancing, and state management.

---

## 🏗️ Architecture

The infrastructure includes:

* Custom VPC with public & private subnets
* Application Load Balancer (ALB)
* Auto Scaling Group (ASG) with EC2 instances
* Private EC2 instance for database layer
* S3 bucket for Terraform state storage
* DynamoDB table for state locking
* Secure Security Groups configuration

---

## ⚙️ CI/CD

* GitHub Actions used for automated infrastructure deployment
* Terraform code is executed from the `infra/` directory
* Backend (S3 + DynamoDB) is handled separately

---

## 🔑 SSH Access (Important)

To access EC2 instances:

1. Manually create a key pair in AWS with name:

   ```
   my-key-sg.pem
   ```

2. Download and store it securely

3. Connect to EC2:

   ```bash
   ssh -i my-key-sg.pem ubuntu@<EC2-Public-IP>
   ```

---

## 🧨 Destroy Infrastructure (Manual)

To delete the entire infrastructure, use the provided script:

```bash
chmod +x destroy-all.sh
./destroy-all.sh
```

This script will:

* First destroy all infrastructure resources (ALB, EC2, ASG, etc.)
* Then destroy backend resources (S3 and DynamoDB)

---

## 📁 Project Structure

```
.
├── infra/                 # Main infrastructure (VPC, ALB, EC2, ASG)
├── bootstrap-backend/    # S3 + DynamoDB backend setup
├── destroy-all.sh        # Manual destroy script
├── .github/workflows/    # CI/CD pipelines
```

---

## ⚠️ Important Notes

* Backend resources (S3 & DynamoDB) should be created once
* Always destroy infrastructure before backend
* Ensure correct AWS region is configured before deployment

---

## 👨‍💻 Author

Shikhar Tiwari
