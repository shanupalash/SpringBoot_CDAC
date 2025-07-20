package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EventController {

    @Autowired
    private EventRegistrationRepository repository;

    @GetMapping("/")
    public String homeRedirect() {
        return "redirect:/register";
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("eventRegistration", new EventRegistration());
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute EventRegistration eventRegistration, Model model) {
        EventRegistration saved = repository.save(eventRegistration);
        model.addAttribute("participant", saved);
        return "view"; 
    }

    @GetMapping("/participants")
    public String viewParticipants(Model model) {
        model.addAttribute("participants", repository.findAll());
        return "viewParticipants";
    }
    
    
    @GetMapping("/edit/{id}")
    public String editForm(@PathVariable Long id, Model model) {
        EventRegistration reg = repository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid ID: " + id));
        model.addAttribute("eventRegistration", reg);
        return "edit";
    }

    @PostMapping("/update")
    public String updateParticipant(@ModelAttribute EventRegistration eventRegistration) {
        repository.save(eventRegistration); // works for update too
        return "redirect:/participants";
    }

    @GetMapping("/delete/{id}")
    public String deleteParticipant(@PathVariable Long id) {
        repository.deleteById(id);
        return "redirect:/participants";
    }

    
    
    
}
