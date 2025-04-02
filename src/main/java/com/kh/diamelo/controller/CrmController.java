package com.kh.diamelo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CrmController {

    @GetMapping("home.crm")
    public String home() {
        return "crmPage/mainPage";
    }
}
