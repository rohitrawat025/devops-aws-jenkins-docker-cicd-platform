CREATE DATABASE portfolio;

USE portfolio;

CREATE TABLE profile(

id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
title VARCHAR(200),
summary TEXT,
email VARCHAR(100),
linkedin VARCHAR(200)

);

CREATE TABLE skill(

id INT PRIMARY KEY AUTO_INCREMENT,
skill_name VARCHAR(100)

);

CREATE TABLE project(

id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(200),
description TEXT,
technology VARCHAR(200)

);

INSERT INTO profile
(name,title,summary,email,linkedin)

VALUES
('Rohit Rawat',
'DevOps Engineer | AWS | Docker | Jenkins | Terraform',
'DevOps engineer experienced in CI/CD, containerization, AWS infrastructure and automation.',
'rawatrohit.wrk.25@gmail.com',
'linkedin.com/in/rohit-rawat');

INSERT INTO skill(skill_name) VALUES
('AWS'),
('Docker'),
('Jenkins'),
('Terraform'),
('Linux'),
('Nginx'),
('Git');

INSERT INTO project(name,description,technology)

VALUES
('Jenkins Master Agent CI/CD',
'Implemented Jenkins distributed pipeline on AWS EC2 with automated Docker deployment',
'Jenkins, Docker, AWS'),

('Spring Boot Docker Deployment',
'Containerized Java application with Docker and Nginx reverse proxy',
'Docker, Nginx, Spring Boot'),

('Terraform AWS Infrastructure',
'Provisioned VPC, EC2, IAM and networking infrastructure using Terraform',
'AWS, Terraform');
