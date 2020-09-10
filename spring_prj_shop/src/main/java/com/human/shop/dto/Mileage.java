package com.human.shop.dto;

public class Mileage {

   public String m_id;
   public int mileage;
   
   public Mileage() {}

   public String getM_id() {
      return m_id;
   }

   public int getMileage() {
      return mileage;
   }

   public void setM_id(String m_id) {
      this.m_id = m_id;
   }

   public void setMileage(int mileage) {
      this.mileage = mileage;
   }

   public Mileage(String m_id, int mileage) {
//      super();
      this.m_id = m_id;
      this.mileage = mileage;
   }
   
   
}