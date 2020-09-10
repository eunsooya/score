package com.human.shop.dto;

public class Newlist {
	public int newlist;
	public String newlist_date;
	public String m_id;
	public int s_id;
	public int rownum;
	
	public Newlist() {}



	public int getRownum() {
		return rownum;
	}



	public void setRownum(int rownum) {
		this.rownum = rownum;
	}



	public int getNewlist() {
		return newlist;
	}

	public String getNewlist_date() {
		return newlist_date;
	}

	public String getM_id() {
		return m_id;
	}

	public int getS_id() {
		return s_id;
	}

	public void setNewlist(int newlist) {
		this.newlist = newlist;
	}

	public void setNewlist_date(String newlist_date) {
		this.newlist_date = newlist_date;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}



	public Newlist(int newlist, String newlist_date, String m_id, int s_id, int rownum) {
//		super();
		this.newlist = newlist;
		this.newlist_date = newlist_date;
		this.m_id = m_id;
		this.s_id = s_id;
		this.rownum = rownum;
	}
	
	
}
