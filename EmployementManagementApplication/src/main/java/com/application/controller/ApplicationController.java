package com.application.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.application.modal.User;
import com.application.services.UserService;
import javax.servlet.http.HttpServletRequest;

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
		
		return"register";
	}
	@RequestMapping("/create-user")
	public String createUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest  request) {
		userService.saveMyUser(user);
	    return "redirect:/login";
	}
	
@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest  request) {
		userService.saveMyUser(user);
		
		return "redirect:/show-users" ;
	}

@RequestMapping("/show-users")
	public String showAllUsers(HttpServletRequest request) {
	request.setAttribute("users", userService.showAllUsers());
	
	return "showusers";
}

@RequestMapping("/delete-user")
public String deleteUser(@RequestParam int id, HttpServletRequest request) {
	userService.deleteMyUser(id);
	//request.setAttribute("users", userService.showAllUsers());
	return "redirect:/show-users" ;
}

@RequestMapping("/edit-user")
public String editUser(@RequestParam int id,HttpServletRequest request) {
	request.setAttribute("user",  userService.findById(id).get());
	return "edituser";
}

@RequestMapping("/login")
public String login(HttpServletRequest request) {
	return"login";
}

@RequestMapping ("/login-user")
public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
	if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
		return "homepage";
	}
	else {
		request.setAttribute("error", "Invalid Username or Password");
	
		return "login";
		
	}
}
@RequestMapping("/logout")
public String logout(HttpServletRequest request) {
	request.setAttribute("mode", "MODE_HOME");
	return "redirect:/welcome";
}
}
