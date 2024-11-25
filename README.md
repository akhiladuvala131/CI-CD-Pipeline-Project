# CI/CD Pipeline with Jenkins, Docker, Terraform, and Kubernetes

## Table of Contents
1. [Project Overview](#project-overview)
2. [Technologies Used](#technologies-used)
3. [Setup and Installation](#setup-and-installation)
4. [Usage](#usage)
5. [CI/CD Pipeline Workflow](#cicd-pipeline-workflow)
6. [License](#license)
7. [Contributing](#contributing)


This project demonstrates the creation of a **CI/CD pipeline** to automate the deployment of a simple **Node.js** application. We are using the following technologies:

- **Jenkins** for automating the pipeline.
- **Docker** for containerizing the Node.js application.
- **Terraform** for provisioning AWS infrastructure (ECR for Docker image storage and EC2 instances).
- **Kubernetes** for deploying the application in a scalable manner.

### Project Overview

1. **Node.js Application**: A simple **Node.js** app is created that serves a "Hello, World!" message via an Express server.
2. **Dockerization**: The Node.js app is containerized using Docker to make it portable and easy to deploy.
3. **Terraform**: Infrastructure is provisioned on AWS using **Terraform**, including an **ECR** repository to store the Docker image and **EC2** instances for hosting.
4. **Jenkins CI/CD Pipeline**: The process is automated using **Jenkins**, which handles building, testing, and deploying the application.

---

## Prerequisites

Before you begin, make sure you have the following installed:

1. **Node.js**: [Install Node.js](https://nodejs.org/)
2. **Docker**: [Install Docker](https://www.docker.com/get-started)
3. **Terraform**: [Install Terraform](https://www.terraform.io/downloads.html)
4. **Jenkins**: [Install Jenkins](https://www.jenkins.io/doc/book/installing/)
5. **Kubernetes Cluster**: A running Kubernetes cluster (either local or cloud-based).
6. **AWS CLI**: [Install AWS CLI](https://aws.amazon.com/cli/)
7. **kubectl**: [Install kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

---

## Project Setup

### 1. Clone the Repository

Clone the project repository to your local machine:

```bash
git clone https://github.com/your-username/my-cicd-project.git
cd my-cicd-project
