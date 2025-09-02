package com.mycompany.mini.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDto {
	private int boardId;         // 글 번호
	private String memberId;     // 작성자 ID (FK)
	private String title;        // 제목
	private String content;      // 내용
	private int hit;             // 조회수
	private Timestamp regDate;    // 작성일
}
