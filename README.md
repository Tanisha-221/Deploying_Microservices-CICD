# Deploying_Microservices-CICD
This project demostrates the deployment of a microservices-based application using a Continous Integration and Continous Deployment (CI/CD) pipeline. The goal is to automate the entire delivery process- from building and testing code to deploying it on cloud infrastructure- ensuring faster, more reliable, and scalable deployments.  
## Objective 📑
- Azure infrastructure is provisioned using Terraform 
- Application deployments are automated using a CI/CD pipeline 
- Deploy a containerized microservices application on Azure infrastructure 
- Implement CI/CD pipelines to automate Terraform provisioning and application deployment 
- Use GitHub for version control, pipeline triggers, and documentation 
## Problem Statement 
This project is to build a CI/CD pipeline that can:
- Build, test, and package microservices. 
- Push container images to Azure Container Registry/Artifacts. 
- Deploy or update services on AKS or Azure App Service 
- Include quality gates  
- Support environment promotion workflows (Dev → Staging → Prod) 
## Deliverables 
- CICD pipeline for terraform provisioning on azure. 
- CI-CD Pipeline for deploying microservices based application. 
- Terraform files for infrastructure provisioning on azure portal 
- Builds Docker containers and deploys them to Azure 
## TECHSTACK 
- **Terraform** - Infrastructure as Code 
- **GitHub Actions** - CI/CD Automation 
- **Microservices Application** - .NET 
- **Git & GitHub** - Version Control and documentation 
## Key Components:
- Microservices Archtecture 
- CI/CD Pipeline 
- Containerization 
- Infrastructure As Code (IaC)
## Step To Buid The Project 
### Step 1: Infrastructure as Code for Microservices 
We'll use AKS for deploying the microservices. The Application we will deploy is .NET Application   
**Step1** Terraform file for AKS 
```

```
