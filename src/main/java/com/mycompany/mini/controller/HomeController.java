package com.mycompany.mini.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;

@Controller
public class HomeController {

	@RequestMapping (value = "/index")
	public String index() {
		return "index";
	}
}
