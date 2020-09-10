package com.human.shop.dto;

public class notice {
   int rownum;
   String m_id;
   int notice_id;
   String notice_date;
   String notice_name;
   String notice_title;
   String notice_content;
   
   public notice() {
      
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

   public int getNotice_id() {
      return notice_id;
   }

   public void setNotice_id(int notice_id) {
      this.notice_id = notice_id;
   }

   public String getNotice_date() {
      return notice_date;
   }

   public void setNotice_date(String notice_date) {
      this.notice_date = notice_date;
   }

   public String getNotice_name() {
      return notice_name;
   }

   public void setNotice_name(String notice_name) {
      this.notice_name = notice_name;
   }

   public String getNotice_title() {
      return notice_title;
   }

   public void setNotice_title(String notice_title) {
      this.notice_title = notice_title;
   }

   public String getNotice_content() {
      return notice_content;
   }

   public void setNotice_content(String notice_content) {
      this.notice_content = notice_content;
   }

   public notice(int rownum, String m_id, int notice_id, String notice_date, String notice_name, String notice_title,
         String notice_content) {
      super();
      this.rownum = rownum;
      this.m_id = m_id;
      this.notice_id = notice_id;
      this.notice_date = notice_date;
      this.notice_name = notice_name;
      this.notice_title = notice_title;
      this.notice_content = notice_content;
   }

   
}