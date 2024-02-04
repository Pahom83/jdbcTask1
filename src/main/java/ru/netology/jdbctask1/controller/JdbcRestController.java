package ru.netology.jdbctask1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.jdbctask1.service.JdbcService;

import java.util.List;

@RestController
public class JdbcRestController {

    private final JdbcService service;

    public JdbcRestController(JdbcService service) {
        this.service = service;
    }

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam("name") String name) {
        System.out.println(name);
        return service.getProductName(name);
    }


}
