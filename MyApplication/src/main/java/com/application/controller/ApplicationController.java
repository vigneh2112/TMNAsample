package com.application.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.application.modal.User;
import com.application.services.UserService;

import jakarta.servlet.http.HttpServletRequest;
@Controller   // handles the req 
public class ApplicationController {
	@Autowired
	private UserService userService;//calling database 
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return"welcomepage";
	}
@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest  request) {
	userService.saveMyUser(user);
	request.setAttribute("mode", "MODE_HOME");
		return"welcomepage";
	}


}
