package com.human.shop.dto;

public class Sales_mileage {

   public String m_id;
   public String sale_mile_date;
   public int sale_mile;
   public String sale_mile_content;
   
   public Sales_mileage() {}

   public String getM_id() {
      return m_id;
   }

   public String getSale_mile_date() {
      return sale_mile_date;
   }

   public int getSale_mile() {
      return sale_mile;
   }

   public String getSale_mile_content() {
      return sale_mile_content;
   }

   public void setM_id(String m_id) {
      this.m_id = m_id;
   }

   public void setSale_mile_date(String sale_mile_date) {
      this.sale_mile_date = sale_mile_date;
   }

   public void setSale_mile(int sale_mile) {
      this.sale_mile = sale_mile;
   }

   public void setSale_mile_content(String sale_mile_content) {
      this.sale_mile_content = sale_mile_content;
   }

   public Sales_mileage(String m_id, String sale_mile_date, int sale_mile, String sale_mile_content) {
//      super();
      this.m_id = m_id;
      this.sale_mile_date = sale_mile_date;
      this.sale_mile = sale_mile;
      this.sale_mile_content = sale_mile_content;
   }
   
   
}