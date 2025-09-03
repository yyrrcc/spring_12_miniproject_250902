package com.mycompany.mini.validator;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.mycompany.mini.dao.MemberDao;
import com.mycompany.mini.dto.MemberDto;

@Component
public class MemberValidator implements Validator {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public boolean supports(Class<?> clazz) {
		return MemberDto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		MemberDto memberDto = (MemberDto) target;
		String memberId = memberDto.getMemberId();
		String password = memberDto.getPassword();
		String name = memberDto.getName();
		String phone = memberDto.getPhone();
		String email = memberDto.getEmail();
		
		// 필드값 empty 확인
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memberId", "아이디가 공란입니다.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "비밀번호가 공란입니다.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "이름이 공란입니다.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "전화번호가 공란입니다.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "이메일이 공란입니다.");
		
		// 아이디 중복
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		int count = memberDao.memIdCheck(memberDto.getMemberId());
		if (count > 0) {
			errors.rejectValue("memberId", "id.duplicate", "이미 사용 중인 아이디입니다.");
		}
		
	}

}
