package com.example.renderws;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloService {
    
    @GetMapping("/hello")
    public String hello() {
        return "hello world";
    }
}
