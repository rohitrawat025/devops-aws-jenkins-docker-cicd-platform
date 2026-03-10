package com.rohit.portfolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.rohit.portfolio.model.Project;

public interface ProjectRepository extends JpaRepository<Project, Long> {
}
