package com.camping.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/*")
public class HomeController {

	@GetMapping("/")
	public String main() {
		
		return "main";
	}
	
	
	@GetMapping("/question")
	public void question() {
		
	}

	@GetMapping("/video")
	public void video() {
		
	}
	
	@GetMapping("/test")
	public void test() {
		
	}
	
	
	
}
