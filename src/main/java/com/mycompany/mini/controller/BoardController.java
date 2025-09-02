package com.mycompany.mini.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.mini.dao.BoardDao;
import com.mycompany.mini.dto.BoardDto;

@Controller
public class BoardController {
	@Autowired
	SqlSession sqlSession;
	
	// 게시판 모든 글 목록
	@RequestMapping (value = "/board/boardList")
	public String boardlist(HttpServletRequest request, Model model) {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		List<BoardDto> boardDtos = boardDao.boardList();
		model.addAttribute("boardDtos", boardDtos);
		return "board/boardList";
	}
	// 글쓰기
	@RequestMapping (value = "/board/boardWrite")
	public String boardWrite(HttpServletRequest request, Model model) {
		return "board/boardWrite";
	}
	@RequestMapping (value = "/board/boardWriteSuccess")
	public String boardWriteSuccess(HttpServletRequest request, Model model) {
		String memberId = request.getParameter("memberId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardWrite(memberId, title, content);
		return "redirect:/board/boardList";
	}
	// 글 세부사항
	@RequestMapping (value = "/board/boardDetail")
	public String boardDetail(HttpServletRequest request, Model model) {
		String bnum = request.getParameter("bnum");
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.updateHit(bnum);
		BoardDto boardDto = boardDao.boardDetail(bnum);
		model.addAttribute("boardDto", boardDto);
		return "board/boardDetail";
	}
	
}
