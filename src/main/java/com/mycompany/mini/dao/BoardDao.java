package com.mycompany.mini.dao;

import java.util.List;

import com.mycompany.mini.dto.BoardDto;

public interface BoardDao {
	
	// 글쓰기
	public void boardWrite(String memberId, String title, String content);
	// 모든 글 개수
	public int boardCount();
	// 글목록
	//public List<BoardDto> boardList();
	// 글목록 + 페이징
	public List<BoardDto> boardList(int startRow, int endRow);
	// 글 세부사항
	public BoardDto boardDetail(String bnum);
	// 조회수
	public void updateHit(String bnum);
	// 글 삭제하기
	public void boardDelete(String bnum);

}
