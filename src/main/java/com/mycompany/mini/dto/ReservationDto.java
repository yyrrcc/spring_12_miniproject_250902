package com.mycompany.mini.dto;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationDto {
	private int resId;   // 예약 번호
	private String memberId;     // 회원 ID (FK)
	private String resDate;      // 예약 날짜
	private String resTime;      // 예약 시간
	private int persons;         // 인원 수
	private Timestamp regDate;    // 예약 등록일
	
	private MemberDto memberDto; // MemberDto를 멤버변수로 지정
	
	public ReservationDto(String memberId, String resDate, String resTime, int persons) {
		super();
		this.memberId = memberId;
		this.resDate = resDate;
		this.resTime = resTime;
		this.persons = persons;
	}	
}
