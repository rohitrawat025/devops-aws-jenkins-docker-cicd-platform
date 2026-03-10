CREATE DATABASE IF NOT EXISTS portfolio;

USE portfolio;

-- ===============================
-- Profile Table
-- ===============================

CREATE TABLE IF NOT EXISTS profile(

id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
title VARCHAR(200),
summary TEXT,
email VARCHAR(100),
linkedin VARCHAR(200)

);

-- ===============================
-- Skill Table
-- ===============================

CREATE TABLE IF NOT EXISTS skill(

id INT PRIMARY KEY AUTO_INCREMENT,
skill_name VARCHAR(100) NOT NULL

);

-- ===============================
-- Project Table
-- ===============================

CREATE TABLE IF NOT EXISTS project(

id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(200) NOT NULL,
github_url VARCHAR(500),
description TEXT,
technology VARCHAR(200)

);

-- ===============================
-- Insert Profile
-- ===============================

INSERT INTO profile
(name,title,summary,email,linkedin)

VALUES
('Rohit Rawat',
'DevOps Engineer | AWS | Docker | Jenkins | Terraform',
'DevOps engineer experienced in CI/CD, containerization, AWS infrastructure and automation.',
'rawatrohit.wrk.25@gmail.com',
'https://linkedin.com/in/rohit-rawat');

-- ===============================
-- Insert Skills
-- ===============================

INSERT INTO skill(skill_name) VALUES
('AWS'),
('Docker'),
('Jenkins'),
('Terraform'),
('Linux'),
('Nginx'),
('Git');

-- ===============================
-- Insert Projects
-- ===============================

INSERT INTO project(name,github_url,description,technology)

VALUES
(
'Jenkins Master Agent CI/CD',
'https://github.com/rohitrawat025/devops-aws-jenkins-docker-cicd-platform',
'Implemented Jenkins distributed pipeline on AWS EC2 with automated Docker deployment',
'Jenkins, Docker, AWS'
),

(
'Spring Boot Docker Deployment',
'https://github.com/rohitrawat025/springboot-docker-deployment',
'Containerized Java application with Docker and Nginx reverse proxy',
'Docker, Nginx, Spring Boot'
),

(
'Terraform AWS Infrastructure',
'https://github.com/rohitrawat025/aws-terraform-infrastructure',
'Provisioned VPC, EC2, IAM and networking infrastructure using Terraform',
'AWS, Terraform'
);
