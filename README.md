# ☁️ Terraform GCP Project

This project provisions infrastructure on **Google Cloud Platform (GCP)** using **Terraform**, and is deployed via a Jenkins CI/CD pipeline.

---

## 🚀 What It Does

- Creates a **Compute Engine VM** (`f1-micro`, free tier)
- Creates a **Cloud Storage Bucket** (randomized name)
- Stores Terraform **remote state in GCS**
- Deploys infra via **Jenkins pipeline**

---

## 🧰 Technologies Used

| Tool | Purpose |
|------|---------|
| Terraform | Infrastructure provisioning |
| GCP | Cloud provider |
| GCP Compute Engine | Virtual Machine |
| GCP Cloud Storage | Bucket + Remote state |
| GCP IAM | Service Account |
| Jenkins | CI/CD pipeline |
| Docker | Jenkins custom container |
| GitHub | SCM + Webhook integration |

---

## ⚙️ Setup Instructions

### 1. 📌 GCP Setup

- Create a GCP project and enable billing
- Enable APIs:
  - Compute Engine API
  - Cloud Storage API
  - IAM API

### 2. 🔐 Service Account

- Create a Service Account with the following roles:
  - **Editor**
  - **Compute Admin**
  - **Storage Admin**

- Download the service account key as `credentials.json`

---
### 3. Jenkins
docker build -t jenkins-with-terraform .

### jenkins container to use terraform and gcp account credentials.json 
docker --% run -d -p 9090:8080 -p 50000:50000 --name jenkins -v jenkins_home:/var/jenkins_home -v C:\Users\ASUS\Desktop\projects\GCP_Project\terraform-gcp-project\terraform\credentials.json:/tmp/credentials.json jenkins-with-terraform

### Jenkinfile pipeline to be able to use credentials.json 
Go to Jenkins Dashboard → Manage Jenkins → Credentials → Global → Add Credentials Kind: Secret file File: Upload your credentials.json ID: gcp-creds (or any ID you'll refer to in the pipeline)

## 📂 Project Structure

```bash
terraform-gcp-project/
├── terraform/
│   ├── main.tf
│   ├── backend.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── credentials.json         
├── jenkins/
│   └── Jenkinsfile             
├── docker/
│   └── Dockerfile                 
└── README.md
