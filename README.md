# simple-mongo-infra (AWS Terraform · ap-south-1)

This repository contains Terraform code for provisioning infrastructure for the **Simple Mongo App** project.  
It is part of a 3-repo setup:

- **Repo 1 – simple-mongo-app**: Builds and pushes the application Docker image to Docker Hub (`:latest`).
- **Repo 2 – simple-mongo-deploy**: GitHub Actions workflow that deploys the app to EC2 using SSH + docker-compose.
- **Repo 3 – simple-mongo-infra** (this repo): Infrastructure as Code with Terraform to provision/manage EC2, Security Group, and Elastic IP.

---

##  Architecture

```mermaid
flowchart LR
  Dev[(Developer)]
  A[Repo 1: simple-mongo-app\nCI: Build & Push Docker Image]
  B[Docker Hub\nartium777/simple-mongo-app:latest]
  C[Repo 2: simple-mongo-deploy\nGH Actions: SSH + docker-compose]
  D[Repo 3: simple-mongo-infra\nTerraform (EC2, SG, EIP)]
  E[(AWS EC2\nUbuntu 22.04\n:8000)]
  Dev --> A --> B
  Dev --> C -->|pull & up| E
  Dev --> D -->|terraform apply| E
  E -->|HTTP :8000| User[(Users)]
