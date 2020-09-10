package com.human.shop.dto;

public class Cart {

	public String m_id;
	public int s_id;

	public int cart_id;
	public String cart_name;
	public int cart_count;
	public int cart_price;
	public int cart_total;
	public String cart_genre;
	public String cart_parts;
	
	public Cart() {}

	public String getM_id() {
		return m_id;
	}

	public int getS_id() {
		return s_id;
	}

	public int getCart_id() {
		return cart_id;
	}

	public String getCart_name() {
		return cart_name;
	}

	public int getCart_count() {
		return cart_count;
	}

	public int getCart_price() {
		return cart_price;
	}

	public int getCart_total() {
		return cart_total;
	}

	public String getCart_genre() {
		return cart_genre;
	}

	public String getCart_parts() {
		return cart_parts;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public void setCart_name(String cart_name) {
		this.cart_name = cart_name;
	}

	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}

	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}

	public void setCart_total(int cart_total) {
		this.cart_total = cart_total;
	}

	public void setCart_genre(String cart_genre) {
		this.cart_genre = cart_genre;
	}

	public void setCart_parts(String cart_parts) {
		this.cart_parts = cart_parts;
	}

	public Cart(String m_id, int s_id, int cart_id, String cart_name, int cart_count, int cart_price, int cart_total,
			String cart_genre, String cart_parts) {
		super();
		this.m_id = m_id;
		this.s_id = s_id;
		this.cart_id = cart_id;
		this.cart_name = cart_name;
		this.cart_count = cart_count;
		this.cart_price = cart_price;
		this.cart_total = cart_total;
		this.cart_genre = cart_genre;
		this.cart_parts = cart_parts;
	}

	
	
}
