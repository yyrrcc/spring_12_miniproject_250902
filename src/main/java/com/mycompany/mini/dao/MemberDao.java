package com.mycompany.mini.dao;

import com.mycompany.mini.dto.MemberDto;

public interface MemberDao {
	
	// 회원가입
	public void memSignUp(MemberDto memberDto);
	// 로그인
	public int memLogin(String memberId, String password);
	// 마이페이지 정보 확인
	public MemberDto mypage(String memberId);
	// 마이페이지 정보 수정
	public void mypageEdit(MemberDto memberDto);
	// 탈퇴
	public void memDelete(String memberId);
}
