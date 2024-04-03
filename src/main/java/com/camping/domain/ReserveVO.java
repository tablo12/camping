package com.camping.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReserveVO {
	
	private int reserve_no;
	private Date reserve_startDate;
	private Date reserve_endDate;
	private int reserve_people;	//예약인원
	private int reserve_price;

}
