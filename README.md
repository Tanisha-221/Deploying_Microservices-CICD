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
## Steps To Build The Project 
### Step 1: Infrastructure as Code for Microservices 
We'll use Azure app service for deploying the microservices. The Application we will deploy is node js  
**Step 1** Terraform file for building Azure infra 
[Click here for terraform file](https://github.com/Tanisha-221/Deploying_Microservices-CICD/blob/main/main.tf) 
Resources it will create 
- Resource Group 
- Service plan 
- Web slot 
- Web app  
--- 
### Step 2: Microservices application 
- [Click here for node.js file](https://github.com/Tanisha-221/Deploying_Microservices-CICD/blob/main/app.js)  
- [Click here for package.json file](https://github.com/Tanisha-221/Deploying_Microservices-CICD/blob/main/package.json)  
- Install inpm locally to create package-lock.json 
```
sudo apt install npm 
````  
---
### Step 3: Docker file 

- Install docker locally  
   - Commands 
```
- sudo apt  install docker.io 
- sudo usermod -aG docker $USER
- docker build -t my app .
```  
- [Click here for docker image](https://github.com/Tanisha-221/Deploying_Microservices-CICD/blob/main/dockerfile)

### Step 4: Push the files to GitHub 
- Push all the local file to GitHUb 
  - Command 
``` 
git checkout -b <pipeline name>
git add .
git commit -m"message"
git push 
```
- Pull the branch to main branch 
- Go to Github Action and create pipeline for deploying terraform and microservices file 
  - [Click here for terraform CICD pipeline](https://github.com/Tanisha-221/Deploying_Microservices-CICD/blob/main/.github/workflows/terraform.yml)
  - [Click here for Docker-CI.yml pipeline](https://github.com/Tanisha-221/Deploying_Microservices-CICD/blob/main/.github/workflows/Docker-CI.yml)
  - [Click here for Docker-CD.yml pipeline](https://github.com/Tanisha-221/Deploying_Microservices-CICD/blob/main/.github/workflows/Docker-CD.yml)
### Step 5: Deploy infra to azure 
- Add credential for azure in secrets and variables 
- When pushed to main branch the pipeline will run 
- Infrastruscture that will be delivere 
  - Resource Group 
  - Web App 
  - Web Slot 
  - Service Plan 
  - Azure container registry 

## Conclusion 
The project “Deploying a Microservices-Based Application Using a CI/CD Pipeline” successfully demonstrates the implementation of continuous integration and continuous deployment principles to achieve automated, reliable, and efficient software delivery.

Using GitHub Actions for pipeline automation, the project establishes two separate workflows — one for Continuous Integration (CI) and another for Continuous Deployment (CD). The CI pipeline automates essential tasks such as code building, unit testing, integration testing, and security scanning, ensuring that only high-quality and secure code proceeds to deployment. The CD pipeline enables automated deployment to Azure App Service while integrating a manual approval process to maintain control and governance over production releases.