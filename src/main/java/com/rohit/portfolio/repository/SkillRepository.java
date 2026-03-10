package com.rohit.portfolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.rohit.portfolio.model.Skill;

public interface SkillRepository extends JpaRepository<Skill, Long> {
}
