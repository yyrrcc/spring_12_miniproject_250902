package com.mycompany.mini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mycompany.mini.dto.BoardDto;

public interface BoardDao {
	
	// 글쓰기
	public void boardWrite(String memberId, String title, String content);
	// 모든 글 개수
	public int boardCount();
	//public int boardCount2(String searchType, String keyword);
	// 글목록
	//public List<BoardDto> boardList();
	// 글목록 + 페이징
	public List<BoardDto> boardList(int startRow, int endRow);
	//public List<BoardDto> boardList2(@Param("startRow") int startRow, @Param("endRow") int endRow,  @Param("searchType") String searchType, @Param("keyword") String keyword);
	// 글 세부사항
	public BoardDto boardDetail(int bnum);
	// 조회수
	public void updateHit(int bnum);
	// 글 수정하기
	public void boardEdit(int bnum, String title, String content);
	// 글 삭제하기
	public void boardDelete(int bnum);

}
