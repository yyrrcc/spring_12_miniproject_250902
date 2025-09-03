package com.mycompany.mini.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.mini.dao.BoardDao;
import com.mycompany.mini.dao.MemberDao;
import com.mycompany.mini.dto.MemberDto;
import com.mycompany.mini.validator.MemberValidator;

@Controller
public class MemberController {
	@Autowired
	private SqlSession sqlSession;
	
	// 유효성 검증
	@Autowired
    private MemberValidator memberValidator;
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(memberValidator);
	}
	
	
	// 회원가입
	@RequestMapping (value = "/member/signup")
	public String signup(HttpServletRequest request, Model model) {
		return "member/signup";
	}
	@RequestMapping (value = "/member/signupSuccess")
	public String signupSuccess(@ModelAttribute @Validated MemberDto memberDto, BindingResult result, Model model, HttpServletRequest request) {
//		String memberId = request.getParameter("memberId");
//		String password = request.getParameter("password");
//		String name = request.getParameter("name");
//		String phone = request.getParameter("phone");
//		String email = request.getParameter("email");
		
		if(result.hasErrors()) {
			List<ObjectError> objectErrors = result.getAllErrors(); // 모든 에러 받기
			List<String> errorMsgs = new ArrayList<String>(); // 에러 메시지 담는 리스트
			for (ObjectError objectError : objectErrors) {
				String errorMsg = objectError.getDefaultMessage(); // 에러 메시지 가져오기
				errorMsgs.add(errorMsg);
			}
			model.addAttribute("errorMsgs", errorMsgs);
			return "member/signup";
		}
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		//memberDto = new MemberDto(memberId, password, name, phone, email);
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
			String name = memberDao.memGetName(memberId);
			session.setAttribute("sessionName", name);
			session.setAttribute("sessionId", memberId);
			return "redirect:/board/boardList";
		} else {
			model.addAttribute("loginError", "아이디 또는 비밀번호가 틀렸습니다. 다시 시도해주세요.");
			return "member/login";
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
		session.getAttribute("sessionId");
		session.invalidate();
		model.addAttribute("msg", "성공적으로 탈퇴 되었습니다.");
		model.addAttribute("url", request.getContextPath() + "/index");
		return "alert";
	}
}
