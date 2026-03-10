package com.rohit.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rohit.portfolio.service.PortfolioService;

@Controller
public class HomeController {

    private final PortfolioService service;

    public HomeController(PortfolioService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {

        model.addAttribute("profile", service.getProfile());
        model.addAttribute("skills", service.getSkills());
        model.addAttribute("projects", service.getProjects());

        return "index";
    }
}
