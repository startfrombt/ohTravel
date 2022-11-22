package com.oracle.ohTravel.manager.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class CouponDTO {
	//기본 쿠폰
	private int coupon_id;
	private String coupon_name;
	private int coupon_discount;
	private Timestamp coupon_date;
	private int coupon_quantity;
	
	//맴버쿠폰테이블
	private String mem_id;
	private Timestamp coupon_down;
	private int coupon_use;
	private Timestamp coupon_limit_date;
}
