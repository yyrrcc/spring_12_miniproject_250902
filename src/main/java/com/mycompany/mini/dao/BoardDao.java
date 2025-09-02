package com.mycompany.mini.dao;

import java.util.List;

import com.mycompany.mini.dto.BoardDto;

public interface BoardDao {
	
	// 글쓰기
	public void boardWrite(String memberId, String title, String content);
	// 글목록
	public List<BoardDto> boardList();
	// 글 세부사항
	public BoardDto boardDetail(String bnum);
	// 조회수
	public void updateHit(String bnum);

}
