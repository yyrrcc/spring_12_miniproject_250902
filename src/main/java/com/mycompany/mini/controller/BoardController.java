package com.mycompany.mini.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	// 게시판 모든 글 목록 + 페이징 + 검색 기능 추가 ..
	@RequestMapping (value = "/board/boardList")
	public String boardlist(HttpServletRequest request, Model model) {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		
		String searchType = request.getParameter("searchType");
    	String keyword = request.getParameter("keyword");
		if (request.getParameter("searchType") == null && request.getParameter("keyword") == null) {
			searchType = "title";
			keyword = "";
		}
		System.out.println(searchType);
		System.out.println(keyword);
		int totalCount = boardDao.boardCount(searchType, keyword); //총 글 수
		int pageNum = 1; //현재 페이지
		int pageSize = 10; // 1페이지 당 보여지는 글 개수
		int blockSize = 5; // 페이지 블럭에 표시 될 페이지의 수
		if (request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		int startRow = (pageNum - 1) * pageSize + 1;
		int endRow = pageNum * pageSize;

		int totalPage = (int) Math.ceil((double)totalCount / pageSize); // 총 페이지 수
		int startPage = (((pageNum - 1) / blockSize) * blockSize) + 1;
		int endPage = startPage + blockSize - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		
		List<BoardDto> boardDtos = boardDao.boardList(startRow, endRow, searchType, keyword);
		model.addAttribute("boardDtos", boardDtos);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("searchType", searchType);
	    model.addAttribute("keyword", keyword);
		return "board/boardList";
	}
	
	// 게시판 모든 글 목록 + 페이징
//	@RequestMapping (value = "/board/boardList")
//	public String boardlist(HttpServletRequest request, Model model) {
//		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
//		int totalCount = boardDao.boardCount(); //총 글 수
//		int pageNum = 1; //현재 페이지
//		int pageSize = 10; // 1페이지 당 보여지는 글 개수
//		int blockSize = 5; // 페이지 블럭에 표시 될 페이지의 수
//		if (request.getParameter("pageNum") != null) {
//			pageNum = Integer.parseInt(request.getParameter("pageNum"));
//		}	
//		int totalPage = (int) Math.ceil((double)totalCount / pageSize); // 총 페이지 수
//		int startPage = (((pageNum - 1) / blockSize) * blockSize) + 1;
//		int endPage = startPage + blockSize - 1;
//		if (endPage > totalPage) {
//			endPage = totalPage;
//		}
//		int startRow = (pageNum - 1) * pageSize + 1;
//		int endRow = pageNum * pageSize;
//
//		List<BoardDto> boardDtos = boardDao.boardList(startRow, endRow);
//		model.addAttribute("boardDtos", boardDtos);
//		model.addAttribute("pageNum", pageNum);
//		model.addAttribute("totalCount", totalCount);
//		model.addAttribute("totalPage", totalPage);
//		model.addAttribute("startPage", startPage);
//		model.addAttribute("endPage", endPage);
//		return "board/boardList";
//	}
	
	// 글쓰기
	@RequestMapping (value = "/board/boardWrite")
	public String boardWrite(HttpServletRequest request, Model model, HttpSession session) {
		String sid = (String) session.getAttribute("sessionId");
		if (sid == null) {
			model.addAttribute("msg", "로그인한 회원만 글 작성 가능합니다.");
			model.addAttribute("url", "boardList");
			return "alert";
		}
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
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.updateHit(bnum);
		BoardDto boardDto = boardDao.boardDetail(bnum);
		model.addAttribute("boardDto", boardDto);
		return "board/boardDetail";
	}
	// 글 수정
	@RequestMapping (value = "/board/boardEdit")
	public String boardEdit(HttpServletRequest request, Model model) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		BoardDto boardDto = boardDao.boardDetail(bnum);
		model.addAttribute("boardDto", boardDto);
		return "board/boardEdit";
	}
	// 글 수정 성공
	@RequestMapping (value = "/board/boardEditSuccess")
	public String boardEditSuccess(HttpServletRequest request, Model model) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardEdit(bnum, title, content);
		BoardDto boardDto = boardDao.boardDetail(bnum);
		model.addAttribute("boardDto", boardDto);
		return "redirect:/board/boardDetail?bnum=" + bnum;
	}
	// 글 삭제
	@RequestMapping (value = "/board/boardDelete")
	public String boardDelete(HttpServletRequest request, Model model) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardDelete(bnum);
		model.addAttribute("msg", "글이 삭제 되었습니다.");
		model.addAttribute("url", request.getContextPath() + "/board/boardList");
		return "alert";
		//return "redirect:/board/boardList";
	}
	
}
