package com.example.demo.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
@RequestMapping("/saludo")
public class SaludoControler {
    
    @GetMapping("/texto")
    public String saludar() {
        return "Hola, Mundo!";
    }
}
