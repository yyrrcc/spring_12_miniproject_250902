package com.mycompany.mini.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.mini.dao.BoardDao;
import com.mycompany.mini.dao.MemberDao;
import com.mycompany.mini.dao.ReservationDao;
import com.mycompany.mini.dto.MemberDto;
import com.mycompany.mini.dto.ReservationDto;

@Controller
public class ReservationController {
	@Autowired
	SqlSession sqlSession;
	
	// 예약 목록
	@RequestMapping (value = "/reservation/reservationList")
	public String reservationList(HttpServletRequest request, Model model) {
		ReservationDao resDao = sqlSession.getMapper(ReservationDao.class);
		List<ReservationDto> resDtos = resDao.resList();
		model.addAttribute("resDtos", resDtos);
		return "reservation/reservationList";
	}
	// 예약하기 폼
	@RequestMapping (value = "/reservation/reservationForm")
	public String reservationForm(HttpServletRequest request, Model model, HttpSession session) {
		String sid = (String) session.getAttribute("sessionId");
		if (sid == null) {
			model.addAttribute("msg", "로그인 하셔야 예약을 하실 수 있습니다.");
			model.addAttribute("url", request.getContextPath() + "/member/login");
			return "alert";
		}
		return "reservation/reservationForm";
	}
	
	// 예약하기
	@RequestMapping (value = "/reservation/resSuccess")
	public String resSuccess(HttpServletRequest request, Model model) {
		String memberId = request.getParameter("memberId");
		String resDate = request.getParameter("resDate");
		String resTime = request.getParameter("resTime");
		int persons = Integer.parseInt(request.getParameter("persons"));
		ReservationDao resDao = sqlSession.getMapper(ReservationDao.class);
		ReservationDto resDto = new ReservationDto(memberId, resDate, resTime, persons);
		resDao.resWrite(resDto);
		return "redirect:/reservation/reservationList";
	}


}
