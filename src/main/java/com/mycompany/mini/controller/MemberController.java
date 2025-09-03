package com.mycompany.mini.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.mini.dao.BoardDao;
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
	@RequestMapping (value = "/member/signupSuccess")
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
	@RequestMapping (value = "/member/loginSuccess")
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
	// 마이페이지 확인
	@RequestMapping (value = "/member/mypage")
	public String mypage(HttpServletRequest request, Model model, HttpSession session) {
		String sid = (String) session.getAttribute("sessionId");
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		MemberDto memberDto = memberDao.mypage(sid);
		model.addAttribute("memberDto", memberDto);
		return "member/mypage";
	}
	// 마이페이지 수정
	@RequestMapping (value = "/member/mypageEdit")
	public String mypageEdit(HttpServletRequest request, Model model, HttpSession session) {
		// 마이페이지 정보 확인, 수정, 탈퇴 버튼
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		MemberDto memberDto = new MemberDto(memberId, password, name, phone, email);
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		memberDao.mypageEdit(memberDto);
		model.addAttribute("msg", "성공적으로 변경되었습니다.");
		model.addAttribute("url", "mypage");
		return "alert";
	}
	// 로그아웃
	@RequestMapping (value = "/signout")
	public String signout(HttpServletRequest request, Model model, HttpSession session) {
		session.getAttribute("sessionId");
		session.invalidate();
		model.addAttribute("msg", "성공적으로 로그아웃 되었습니다.");
		model.addAttribute("url", "index");
		return "alert";
	}
	// 탈퇴
	@RequestMapping (value = "/member/memDelete")
	public String memDelete(HttpServletRequest request, Model model, HttpSession session) {
		String memberId = request.getParameter("memberId");
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		memberDao.memDelete(memberId);
		model.addAttribute("msg", "성공적으로 탈퇴 되었습니다.");
		model.addAttribute("url", "index");
		// 주소 에러
		return "alert";
	}
}
