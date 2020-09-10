package com.human.shop.dto;

public class Score {
	int rownum;
	int s_id;

	public String score_date;
	public String score_name;
	public String score_singer;
	public String score_parts;
	public String score_genre;
	public int score_price;
	public String score_vedio;
	
	public Score() {}

	public int getRownum() {
		return rownum;
	}

	public int getS_id() {
		return s_id;
	}

	public String getScore_date() {
		return score_date;
	}

	public String getScore_name() {
		return score_name;
	}

	public String getScore_singer() {
		return score_singer;
	}

	public String getScore_parts() {
		return score_parts;
	}

	public String getScore_genre() {
		return score_genre;
	}

	public int getScore_price() {
		return score_price;
	}

	public String getScore_vedio() {
		return score_vedio;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public void setScore_date(String score_date) {
		this.score_date = score_date;
	}

	public void setScore_name(String score_name) {
		this.score_name = score_name;
	}

	public void setScore_singer(String score_singer) {
		this.score_singer = score_singer;
	}

	public void setScore_parts(String score_parts) {
		this.score_parts = score_parts;
	}

	public void setScore_genre(String score_genre) {
		this.score_genre = score_genre;
	}

	public void setScore_price(int score_price) {
		this.score_price = score_price;
	}

	public void setScore_vedio(String score_vedio) {
		this.score_vedio = score_vedio;
	}

	public Score(int rownum, int s_id, String score_date, String score_name, String score_singer, String score_parts,
			String score_genre, int score_price, String score_vedio) {
//		super();
		this.rownum = rownum;
		this.s_id = s_id;
		this.score_date = score_date;
		this.score_name = score_name;
		this.score_singer = score_singer;
		this.score_parts = score_parts;
		this.score_genre = score_genre;
		this.score_price = score_price;
		this.score_vedio = score_vedio;
	}
	
	


	
	
}
