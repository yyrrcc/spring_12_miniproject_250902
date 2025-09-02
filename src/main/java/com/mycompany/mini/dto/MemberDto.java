package com.mycompany.mini.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {
	private String memberId;   // 아이디
	private String password;   // 비밀번호
	private String name;       // 이름
	private String phone;      // 전화번호
	private String email;      // 이메일
	private Timestamp regDate;    // 가입일 (문자열로 받거나 java.sql.Date 사용 가능)

}
