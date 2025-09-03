package com.mycompany.mini.dao;

import java.util.List;

import com.mycompany.mini.dto.ReservationDto;

public interface ReservationDao {
	
	// 예약하기
	public void resWrite(ReservationDto resDto);
	// 예약목록
	public List<ReservationDto> resList();
}
