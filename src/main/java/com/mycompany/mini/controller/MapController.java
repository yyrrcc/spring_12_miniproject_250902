package com.mycompany.mini.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
	@Autowired
	SqlSession sqlSession;
	
	// 지도
	@RequestMapping (value = "/map/map")
	public String map(HttpServletRequest request, Model model) {
		return "map/map";
	}
}
