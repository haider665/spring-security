package com.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	
	@GetMapping("/login-form")
	public String showForm() {
		
		return "login";
	}
	
	@GetMapping("/admin")
	public String callAdmin() {
		
		return "admin";
	}
	
	@GetMapping("/manager")
	public String callManager() {
		
		return "manager";
	}
	
	@GetMapping("/access-denied")
	public String accessDenied() {
		
		return "access-denied";
	}
	
	@GetMapping("/has")
	public String has() {
		
		return "has";
	}
	

	
	
}








