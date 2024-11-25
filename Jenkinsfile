pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'akhil1333/my-node-app'
        AWS_REGION = 'us-east-1'
        ECR_URL = '149536500553.dkr.ecr.us-east-1.amazonaws.com/my-docker-repo'
        CLUSTER_NAME = 'my-k8s-cluster'
    }
stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/akhiladuvala131/CI-CD-Pipeline-Projectgit.git'

            }
        }
stage('Push Docker Image to ECR') {
            steps {
                script {
                    sh 'aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ECR_URL'
                    docker.image(DOCKER_IMAGE).push('latest')
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform init'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    sh 'kubectl apply -f kubernetes/deployment.yaml'
                }
            }
        }
    }
}
