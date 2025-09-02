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

	
	// 게시판 모든 글 목록 + 페이징
	@RequestMapping (value = "/board/boardList")
	public String boardlist(HttpServletRequest request, Model model) {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		int totalCount = boardDao.boardCount(); //총 글 수
		int pageNum = 1; //현재 페이지
		int pageSize = 10; // 1페이지 당 보여지는 글 개수
		int blockSize = 5; // 페이지 블럭에 표시 될 페이지의 수
		if (request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}	
		int totalPage = (int) Math.ceil((double)totalCount / pageSize); // 총 페이지 수
		int startPage = (((pageNum - 1) / blockSize) * blockSize) + 1;
		int endPage = startPage + blockSize - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		int StartRow = (pageNum - 1) * pageSize + 1;
		int endRow = pageNum * pageSize;

		List<BoardDto> boardDtos = boardDao.boardList(StartRow, endRow);
		model.addAttribute("boardDtos", boardDtos);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
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
	// 글 삭제
	@RequestMapping (value = "/board/boardDelete")
	public String boardDelete(HttpServletRequest request, Model model) {
		String bnum = request.getParameter("bnum");
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardDelete(bnum);
		return "redirect:/board/boardList";
	}
	
}
