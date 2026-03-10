package com.rohit.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rohit.portfolio.service.PortfolioService;

@Controller
public class ProjectController {

    private final PortfolioService service;

    public ProjectController(PortfolioService service) {
        this.service = service;
    }

    @GetMapping("/projects")
    public String projects(Model model) {

        model.addAttribute("projects", service.getProjects());

        return "projects";
    }
}
