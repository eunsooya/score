package com.human.shop.dto;

public class Sales {
   public String m_id;  //아이디
   public int s_id;  //악보번호

   public String sales_date;  //날짜
   public String sales_name;  //상품이름
   public String sales_parts;  // 상품파트
   public String sales_genre; //상품장르
   public int sales_price;  //구매가격
   public String sales_address; //주소
   public String singer;
   
   public Sales() {}
   
   public Sales(String m_id, int s_id, String sales_date, String sales_name, String sales_parts, String sales_genre,
         int sales_price, String sales_address, String singer) {
//      super();
      this.m_id = m_id;
      this.s_id = s_id;
      this.sales_date = sales_date;
      this.sales_name = sales_name;
      this.sales_parts = sales_parts;
      this.sales_genre = sales_genre;
      this.sales_price = sales_price;
      this.sales_address = sales_address;
      this.singer = singer;
   }

   public String getM_id() {
      return m_id;
   }

   public int getS_id() {
      return s_id;
   }

   public String getSales_date() {
      return sales_date;
   }

   public String getSales_name() {
      return sales_name;
   }

   public String getSales_parts() {
      return sales_parts;
   }

   public String getSales_genre() {
      return sales_genre;
   }

   public int getSales_price() {
      return sales_price;
   }

   public String getSales_address() {
      return sales_address;
   }
   
   public String getSinger() {
      return singer;
   }

   public void setM_id(String m_id) {
      this.m_id = m_id;
   }

   public void setS_id(int s_id) {
      this.s_id = s_id;
   }

   public void setSales_date(String sales_date) {
      this.sales_date = sales_date;
   }

   public void setSales_name(String sales_name) {
      this.sales_name = sales_name;
   }

   public void setSales_parts(String sales_parts) {
      this.sales_parts = sales_parts;
   }

   public void setSales_genre(String sales_genre) {
      this.sales_genre = sales_genre;
   }

   public void setSales_price(int sales_price) {
      this.sales_price = sales_price;
   }

   public void setSales_address(String sales_address) {
      this.sales_address = sales_address;
   }
   
   public void setSinger(String singer) {
      this.singer = singer;
   }
}