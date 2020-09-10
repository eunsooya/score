package com.human.shop.dao;

import java.util.ArrayList;

import com.human.shop.dto.Cart;
import com.human.shop.dto.Heart;
import com.human.shop.dto.Member;
import com.human.shop.dto.Mileage;
import com.human.shop.dto.Newlist;
import com.human.shop.dto.Sales;
import com.human.shop.dto.Sales_mileage;
import com.human.shop.dto.Score;
import com.human.shop.dto.fqaDto;
import com.human.shop.dto.loginDto;
import com.human.shop.dto.notice;

public interface IDao {
//----------------------------------------------------------------------------------------------------------------------------
//[메인페이지]
   public ArrayList<Score> newScore();
   public ArrayList<Sales> bestScore();
   public ArrayList<Sales> gayoBestScore();
//회원가입시 DB[INSERT]
	public void member_insert(String id,String pw,String name,String gene,String birth,String mail,String mobile,String adress);	
//회원가입(중복체크)
	public Member join_idchk(String id);
//회원가입(이메일체크) 
	public Member join_emailchk(String email);

	//----------------------------------------------------------------------------------------------------------------------------	
//로그인 유지
	public loginDto login(String id, String pw);
//로그인(아이디찾기)
	public Member idFind(String name, String mail);
//로그인(아이디찾기 -> 아이디찾은페이지 보여주기)
	public void idInfo(String id);
//로그인(비밀번호찾기)
	public Member member_pwSelect(String mail, String id, String name);
	

//검색---------------------------------------------------------------------------------------------------------
	public ArrayList<Score> search_select(String parameter, String string);
	   
	   //----------------------------------------------------------------------------------------------------------------------------

//사이드 상품---------------------------------------------------------------------------------------------------------
	public ArrayList<Newlist> sideImg(String m_id);
	
	//[상품페이지]
	public Score product_select(String s_id);
	
   //베스트베스트--------------------------------------------------------------------------------------------------------------------------   
   public ArrayList<Score> newnew();
     
   
   
   //최신최신-----------------------------------------------------------------------------------------------------------------------   
   public ArrayList<Sales> bestbest();

	
	//마이페이지
    public ArrayList<Sales> mypage_select(String m_id, String date1, String date2);
    public ArrayList<Member> mypage_info(String m_id);
    public void mypage_update(String id, String pw, String mobile, String adress);
    public Member mypage_pwconfirm(String pw, String id);
    
    //마일리지
    public void mileage_insert(String id, int mileage);
    
   public Mileage mileage_basemile(String m_id);
   
   public void mileage_sales_insert(String m_id, String point);
   
   public void mileage_update(int mymileage, String m_id);
   
   public ArrayList<Sales_mileage> mypage_mileage_select_all(String m_id);
   
   public int mypage_mileage_select_base(String m_id);
   
   public Mileage mypage_mileage_it(String m_id);
   
   public Mileage mileage_select(String m_id);
   
   public void sales_mileage_insert(String id, int mileage);
    
	//----------------------------------------------------------------------------------------------------------------------------
//[FQA] 
	
	public void fqa_update(String parameter, String parameter2, String fqa_id);

	public Object fqacontent(String parameter);

	public void fqa_group_update(String parameter, String fqa_id);

	public void fqa_insert(String m_id, String name, String title, String sel, String con);

	public loginDto fqa_name_write(String m_id);

	public void fqa_delete(String parameter);

	public ArrayList<fqaDto> list();

	public int fqa_total();

	public ArrayList<fqaDto> fqa_page(int end, int start);
	
	public ArrayList<Cart> cart_online(String m_id);
	public ArrayList<Cart> cart(String temp);
	public void cart_delete(String delete);
	public void sales_insert(String m_id, int s_id, String cart_name, String cart_parts, String cart_genre,
			int cart_total, String addr);
	public void cart_alldelete(String m_id);
	public Cart carts(String string);
	public Member order_Info(String m_id);
	public Cart cart3(int a);

	//상품----------------------------------------------------------------------------------------------------------
	public int score_total();
	
	public ArrayList<Score> score(int endRow, int startRow);
	
	public Score product_confirm(int sid);
	public void product_cart(String m_id, int sid, String score_name, String score_parts, String score_genre, int cnt,
			int price, int total);
	
	public Score pay_product(int s_id);
	
	//상품 찜하기
	public Heart product_heart(String mid, int sid);
	public void heart_insert(String m_id, int s_id, String s_name);
	
	
   public ArrayList<Heart> mypage_heart(String m_id);
   public void heart_delete(String delete);
   public void heart_alldelete(String m_id);
	
	//productssel
	public int parts_total(String products);
	public ArrayList<Score> parts(int endRow, int startRow, String products);

	//genre
	public int genre_total(String genre);
	public ArrayList<Score> genre(int endRow, int startRow, String genre);
	
	//공지사항----------------------------------------------------------------------------------------------------------
	 public int notice_total();
     public ArrayList<notice> notice_page(int endRow, int startRow);
     public Object noticecontent(int n_id);
     public void notice_delete(int n_id);
     public void notice_update(String parameter, String parameter2, int n_id);
     public void notice_insert(String m_id, String name, String title, String con);
     public ArrayList<Score> search_select(int endRow, int startRow, String id, String iss);
     public int search_total(String id, String iss);
		
		//최신-----------------------------------------------
		public void side_join_insert(String id, int i);
		
		public void newlist_insert(String m_id, String s_id);
		
		public void newlist_delete(String m_id,String rowid);
		
		public void newlist_delete2(String m_id, String s_id);
		
		public ArrayList<Newlist> newlist_compare(String m_id, String s_id);
		
		public ArrayList<String> newlist_rowid(String m_id);
		
		//비디오 불러오기
		public Score product_vedio(String s_id);
	

	
	
}
