package com.human.shop.dto;

public class Heart {
   public String m_id;
   public int s_id;
   public String score_name;
   public Heart() {}
   
   public Heart(String m_id, int s_id, String score_name) {
//      super();
      this.m_id = m_id;
      this.s_id = s_id;
      this.score_name = score_name;
   }
   
   public String getM_id() {
      return m_id;
   }
   public int getS_id() {
      return s_id;
   }
   public String getScore_name() {
      return score_name;
   }
   public void setM_id(String m_id) {
      this.m_id = m_id;
   }
   public void setS_id(int s_id) {
      this.s_id = s_id;
   }
   public void setScore_name(String score_name) {
      this.score_name = score_name;
   };
   

}