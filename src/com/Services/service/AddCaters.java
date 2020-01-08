package com.Services.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Register.service.DBConnection;
import com.Services.model.Caters;
import com.Token.service.AddNewToken;
import com.mysql.jdbc.Connection;

public class AddCaters {
	

	
	private String user_id;
	
	
	
	public void addCatering(Caters ct,HttpServletRequest request) throws SQLException,ClassNotFoundException  {
		
		HttpSession session = request.getSession(); //CREATING A SESSION OBJECT
		//session.setAttribute("sessionEmail",email);
		
		AddNewToken adnt = new AddNewToken();
		
		DBConnection db = new DBConnection();
		Connection conn = DBConnection.getConnection();
		Statement s_add_catering= conn.createStatement();
		
		String url_id = request.getParameter("url");
		
		Statement s_get_user_id = conn.createStatement();
		String sql_get_user_id = "SELECT user_id FROM stakehoders where email = '"+session.getAttribute("sessionEmail")+"'";
		ResultSet rs_get_user_id = s_get_user_id.executeQuery(sql_get_user_id);
		
		
		if(rs_get_user_id.next()){		
			user_id =  rs_get_user_id.getString("user_id");
		}
		
		
		//String q_id =  request.getQueryString();
		//String getQuery_id = request.getParameter("id");
		
		//System.out.println(request.getParameter("id"));
		
		
		
		String sql_add_catering = "INSERT INTO catering(token_id,stakeholder_id,req_date,vetors,plates,meal,desert,visibility)"
				+ "VALUES('"+url_id+"','"+user_id+"','"+ct.getReq_date()+"','"+ct.getVetors()+"','"+ct.getNo_of_plates()+"','"+ct.getMeal()+"','"+ct.getDesert()+"','ToAdmin')";
		
		s_add_catering.executeUpdate(sql_add_catering);
		
	}

}
