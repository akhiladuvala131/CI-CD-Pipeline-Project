# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create an ECR Repository
resource "aws_ecr_repository" "example" {
  name = "my-docker-repo" # Name of the ECR repository

  # (Optional) Enable image scanning on push
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = "Development"
    Team        = "DevOps"
  }
}

# Define a Lifecycle Policy for the ECR Repository
resource "aws_ecr_lifecycle_policy" "example" {
  repository = aws_ecr_repository.example.name

  policy = <<EOT
{
  "rules": [
    {
      "rulePriority": 1,
      "description": "Remove untagged images",
      "selection": {
        "tagStatus": "untagged",
        "countType": "imageCountMoreThan",
        "countNumber": 1
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
EOT
}

