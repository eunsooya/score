package com.human.shop.dto;

public class Pay {

	public String m_id;
	public String s_id;

	public int pay_id;
	public String pay_name;
	public int  pay_count;
	public int  pay_price;
	
	public Pay() {}

	public String getM_id() {
		return m_id;
	}

	public String getS_id() {
		return s_id;
	}

	public int getPay_id() {
		return pay_id;
	}

	public String getPay_name() {
		return pay_name;
	}

	public int getPay_count() {
		return pay_count;
	}

	public int getPay_price() {
		return pay_price;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public void setPay_id(int pay_id) {
		this.pay_id = pay_id;
	}

	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}

	public void setPay_count(int pay_count) {
		this.pay_count = pay_count;
	}

	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}

	public Pay(String m_id, String s_id, int pay_id, String pay_name, int pay_count, int pay_price) {
//		super();
		this.m_id = m_id;
		this.s_id = s_id;
		this.pay_id = pay_id;
		this.pay_name = pay_name;
		this.pay_count = pay_count;
		this.pay_price = pay_price;
	}
	
	
}
