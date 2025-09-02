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
public class ReservationController {
	@Autowired
	SqlSession sqlSession;
	
	// 예약 목록
	@RequestMapping (value = "/reservation/reservationList")
	public String reservationList(HttpServletRequest request, Model model) {
		return "reservation/reservationList";
	}
	// 예약하기 폼
	@RequestMapping (value = "/reservation/reservationForm")
	public String reservationForm(HttpServletRequest request, Model model) {
		return "reservation/reservationForm";
	}	


}
