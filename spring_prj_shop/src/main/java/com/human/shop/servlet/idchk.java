package com.human.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.interfaces.RSAKey;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.jdbc.core.PreparedStatementCreator;

/**
 * Servlet implementation class idchk
 */
public class idchk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public idchk(String m_id) {}
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
    	Connection conn=null;
		ResultSet rs= null;
		String connstr="jdbc:oracle:thin:@192.168.1.40:1521:human";
		
		JSONArray ar=new JSONArray();		
		JSONObject obj;
		
		
		
    	PreparedStatement ps = null;
    	int result = 0;
    	
    	
		  
    try {
    	
    	Class.forName("oracle.jdbc.driver.OracleDriver");
		
		conn=DriverManager.getConnection(connstr,"system","human");
		String sql = "select m_id from member where m_id =?";
		
		ps = conn.prepareStatement(sql);
    	rs = ps.executeQuery();
		
		
    	if(rs.next()) {
    		result= 1;
    	}
    }catch(Exception e) {
    	e.printStackTrace();
    }
	
	response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(ar);
		out.close();
	try {
		conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}

    
  }
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
