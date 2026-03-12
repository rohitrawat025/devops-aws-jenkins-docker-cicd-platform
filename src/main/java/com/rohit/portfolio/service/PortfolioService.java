package com.rohit.portfolio.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.rohit.portfolio.model.Profile;
import com.rohit.portfolio.model.Project;
import com.rohit.portfolio.model.Skill;
import com.rohit.portfolio.repository.ProfileRepository;
import com.rohit.portfolio.repository.ProjectRepository;
import com.rohit.portfolio.repository.SkillRepository;

@Service
public class PortfolioService {

    private final ProfileRepository profileRepo;
    private final ProjectRepository projectRepo;
    private final SkillRepository skillRepo;

    public PortfolioService(ProfileRepository profileRepo,
                            ProjectRepository projectRepo,
                            SkillRepository skillRepo) {

        this.profileRepo = profileRepo;
        this.projectRepo = projectRepo;
        this.skillRepo = skillRepo;
    }

    public Profile getProfile() {
        return profileRepo.findAll()
                .stream()
                .findFirst()
                .orElse(null);
    }

    public List<Project> getProjects() {
        return projectRepo.findAll();
    }

    public List<Skill> getSkills() {
        return skillRepo.findAll();
    }
}
