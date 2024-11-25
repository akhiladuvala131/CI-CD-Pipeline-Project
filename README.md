# CI/CD Pipeline with Jenkins, Docker, Terraform, and Kubernetes

## Table of Contents
1. [Project Overview](#project-overview)
2. [Technologies Used](#technologies-used)
3. [Setup and Installation](#setup-and-installation)
5. [CI/CD Pipeline Workflow](#cicd-pipeline-workflow)
5. [License](#license)

---

## Project Overview

This project demonstrates the implementation of a **CI/CD pipeline** using **Jenkins**, **Docker**, **Terraform**, and **Kubernetes**. The main goal is to automate the process of building, testing, and deploying a simple **Node.js** application in a cloud-native environment.

### Key Features:
- **Automated Docker image builds** using Jenkins and Docker.
- **Infrastructure provisioning** using Terraform to deploy resources on AWS (EC2, ECR, etc.).
- **Containerization** with Docker for a consistent build and deployment environment.
- **Deployment automation** to a **Kubernetes** cluster with rolling updates and scaling.
- Continuous integration with automated tests on every code commit.

---

## Technologies Used

This project utilizes the following tools and technologies:

- **Node.js**: JavaScript runtime for building the backend application.
- **Docker**: For containerizing the Node.js application into an isolated environment.
- **Jenkins**: Automates the build, test, and deployment pipeline.
- **Terraform**: Infrastructure-as-Code tool used to provision AWS resources like EC2 and ECR.
- **Kubernetes**: Container orchestration platform for scaling, load balancing, and managing deployments.
- **AWS**: Cloud service provider used for infrastructure (ECR for Docker images, EC2 for compute, etc.).
- **GitHub**: Version control for source code and integration with Jenkins.

---

## Setup and Installation

#Docker Setup:-
- Build Docker Image:
docker build -t node-app 
- Run Docker Container:
docker run -p 3000:3000 node-app

#Terraform Setup
- Initialize Terraform:
terraform init
- Apply Terraform Configuration (This will provision infrastructure on AWS):
terraform apply

#Kubernetes Setup
- Deploy to Kubernetes:
kubectl apply -f kubernetes/deployment.yaml

Follow the steps below to set up the project locally or on a cloud environment.


### Prerequisites
1. **Node.js** - Install from [nodejs.org](https://nodejs.org/)
2. **Docker** - Install from [docker.com](https://www.docker.com/get-started)
3. **Terraform** - Install from [terraform.io](https://www.terraform.io/downloads.html)
4. **Jenkins** - Install from [jenkins.io](https://www.jenkins.io/doc/book/installing/)
5. **AWS CLI** - Install from [AWS CLI](https://aws.amazon.com/cli/)
6. **kubectl** - Install from [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

### Clone the Repository
Clone the repository to your local machine:
```bash
git clone https://github.com/your-username/ci-cd-pipeline.git
cd ci-cd-pipeline


