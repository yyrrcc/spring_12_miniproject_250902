package com.mycompany.mini.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.mini.dao.MemberDao;
import com.mycompany.mini.dto.MemberDto;

@Controller
public class MemberController {
	@Autowired
	SqlSession sqlSession;
	
	// 회원가입
	@RequestMapping (value = "/member/signup")
	public String signup(HttpServletRequest request, Model model) {
		return "member/signup";
	}
	@RequestMapping (value = "/signupSuccess")
	public String signupSuccess(HttpServletRequest request, Model model) {
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		MemberDto memberDto = new MemberDto(memberId, password, name, phone, email);
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		memberDao.memSignUp(memberDto);
		return "redirect:/member/login";
	}
	
	// 로그인
	@RequestMapping (value = "/member/login")
	public String login(HttpServletRequest request, Model model) {
		return "member/login";
	}
	@RequestMapping (value = "/loginSuccess")
	public String loginSuccess(HttpServletRequest request, Model model, HttpSession session) {
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		int result = memberDao.memLogin(memberId, password);
		if (result == 1) {
			// 로그인 성공
			session.setAttribute("sessionId", memberId);
			return "redirect:/board/boardList";
		} else {
			return "index";
		}
	}
}
