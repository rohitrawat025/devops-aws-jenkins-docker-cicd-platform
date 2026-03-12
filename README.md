# DevOps CI/CD Portfolio Platform

A production-style DevOps project demonstrating automated infrastructure provisioning, containerized application deployment, and CI/CD pipeline implementation using AWS, Terraform, Jenkins, Docker, and Nginx.

---

## Architecture

Developer → GitHub → Jenkins Master → Jenkins Agent → Docker Compose → Nginx → Spring Boot → MySQL

---

## Technologies Used

* AWS EC2
* Terraform
* Jenkins (Master–Agent architecture)
* Docker
* Docker Compose
* Nginx Reverse Proxy
* Spring Boot
* MySQL
* GitHub Webhooks
* Linux

---

## Infrastructure Provisioning 

Terraform automatically provisions:-

* VPC
* Subnet
* Internet Gateway
* Route Tables
* Security Groups
* Jenkins Master EC2
* Jenkins Agent EC2
* Elastic IPs

---

## CI/CD Workflow

1. Developer pushes code to GitHub
2. GitHub webhook triggers Jenkins
3. Jenkins pipeline runs on agent node
4. Docker images are built
5. Containers are deployed using Docker Compose
6. Nginx exposes application to the internet

---

## Container Architecture

The Jenkins agent runs three containers:

* MySQL Database
* Spring Boot Application
* Nginx Reverse Proxy

---

## Application URLs

Frontend

http://SERVER_IP:81

Projects page

http://SERVER_IP:81/projects

---

## Author

Rohit Rawat
DevOps Engineer
AWS | Docker | Docker-Compose | Jenkins | Terraform | Linux
