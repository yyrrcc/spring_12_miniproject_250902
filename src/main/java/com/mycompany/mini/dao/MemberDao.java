package com.mycompany.mini.dao;

import com.mycompany.mini.dto.MemberDto;

public interface MemberDao {
	
	// 회원가입
	public void memSignUp(MemberDto memberDto);
	// 로그인
	public int memLogin(String memberId, String password);
	// 로그인 후 회원 이름 가져오기
	public String memGetName(String memberId);
	// 마이페이지 정보 확인
	public MemberDto mypage(String memberId);
	// 마이페이지 정보 수정
	public void mypageEdit(MemberDto memberDto);
	// 탈퇴
	public void memDelete(String memberId);
}
