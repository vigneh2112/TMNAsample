package com.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller   // handles the req 
public class ApplicationController {
	
	@GetMapping("/welcome")
public String Welcome() {
	return "welcomepage";
}
}
