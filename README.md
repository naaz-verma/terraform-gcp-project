# terraform-gcp-project

# Terraform GCP Demo

This project provisions a simple infrastructure setup on Google Cloud Platform using Terraform, including:
- A Compute Engine virtual machine (f1-micro, free-tier eligible)
- A Cloud Storage bucket with a unique name

## 🧰 Technologies Used

- Terraform
- Google Cloud Platform (GCP)
- GCP Compute Engine
- GCP Cloud Storage
- IAM (Service Account)


## ⚙️ Setup Instructions

1. **Configure GCP Project** and enable billing
2. **Create a service account** with:
   - Editor
   - Compute Admin
   - Storage Admin
3. **Download the key** as `credentials.json`
4. **Initialize Terraform**:
   ```bash
   terraform init
   terraform plan 
   terraform apply 

## Jenkins
docker build -t jenkins-with-terraform .
docker --% run -d -p 9090:8080 -p 50000:50000 --name jenkins -v jenkins_home:/var/jenkins_home -v C:\Users\ASUS\Desktop\projects\GCP_Project\terraform-gcp-project\terraform\credentials.json:/tmp/credentials.json jenkins-with-terraform


