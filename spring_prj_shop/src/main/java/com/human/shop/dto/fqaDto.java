package com.human.shop.dto;

public class fqaDto {
int rownum;
String m_id;
int fqa_id;
String fqa_date;
String fqa_name;
String fqa_title;
String fqa_kategory;
String fqa_content;
String fqa_group;

	public fqaDto() {
		
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getFqa_id() {
		return fqa_id;
	}

	public void setFqa_id(int fqa_id) {
		this.fqa_id = fqa_id;
	}

	public String getFqa_date() {
		return fqa_date;
	}

	public void setFqa_date(String fqa_date) {
		this.fqa_date = fqa_date;
	}

	public String getFqa_name() {
		return fqa_name;
	}

	public void setFqa_name(String fqa_name) {
		this.fqa_name = fqa_name;
	}

	public String getFqa_title() {
		return fqa_title;
	}

	public void setFqa_title(String fqa_title) {
		this.fqa_title = fqa_title;
	}

	public String getFqa_kategory() {
		return fqa_kategory;
	}

	public void setFqa_kategory(String fqa_kategory) {
		this.fqa_kategory = fqa_kategory;
	}

	public String getFqa_content() {
		return fqa_content;
	}

	public void setFqa_content(String fqa_content) {
		this.fqa_content = fqa_content;
	}

	public String getFqa_group() {
		return fqa_group;
	}

	public void setFqa_group(String fqa_group) {
		this.fqa_group = fqa_group;
	}

	public fqaDto(int rownum, String m_id, int fqa_id, String fqa_date, String fqa_name, String fqa_title,
			String fqa_kategory, String fqa_content, String fqa_group) {
//		super();
		this.rownum = rownum;
		this.m_id = m_id;
		this.fqa_id = fqa_id;
		this.fqa_date = fqa_date;
		this.fqa_name = fqa_name;
		this.fqa_title = fqa_title;
		this.fqa_kategory = fqa_kategory;
		this.fqa_content = fqa_content;
		this.fqa_group = fqa_group;
	}

	
	
}
