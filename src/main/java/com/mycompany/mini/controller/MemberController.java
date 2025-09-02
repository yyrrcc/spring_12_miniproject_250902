package com.mycompany.mini.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping (value = "/signup")
	public String signup() {
		return "member/signup";
	}
	
	@RequestMapping (value = "/login")
	public String login() {
		return "member/login";
	}
	@RequestMapping (value = "/loginSuccess")
	public String loginSuccess() {
		return "member/loginSuccess";
	}
}
