package com.mycompany.mini.dao;

import com.mycompany.mini.dto.MemberDto;

public interface MemberDao {
	
	// 회원가입
	public void memSignUp(MemberDto memberDto);
	// 로그인
	public int memLogin(String memberId, String password);
}
