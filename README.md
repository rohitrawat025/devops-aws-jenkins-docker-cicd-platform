# Infra  CI/CD Sowcase

Production-grade DevOps pipeline deploying a containerized Spring Boot portfolio application on AWS using Jenkins distributed architecture.

## Architecture

Developer → GitHub → Jenkins Master → Jenkins Agent → Docker Compose → Nginx → Spring Boot → MySQL

## Technologies

- AWS EC2
- Terraform
- Jenkins Master-Agent
- Docker
- Docker Compose
- Nginx
- Spring Boot
- MySQL
- GitHub Webhooks

## Infrastructure

Terraform provisions:

- VPC
- Subnet
- Internet Gateway
- Route Tables
- Security Groups
- Jenkins Master EC2
- Jenkins Agent EC2
- Elastic IPs

## Containers

The Jenkins Agent runs 3 containers:

- MySQL
- Spring Boot Application
- Nginx Reverse Proxy

## CI/CD Flow

1 Developer pushes code to GitHub  
2 GitHub triggers Jenkins webhook  
3 Jenkins pipeline executes on agent  
4 Docker images are built  
5 Containers are deployed with Docker Compose  
6 Nginx exposes frontend and backend  

## Application URLs

Frontend
http://SERVER_IP


Projects page
http://SERVER_IP/projects


Backend API
http://SERVER_IP/api


## Author
Rohit Rawat  
DevOps Trainee Engineer
