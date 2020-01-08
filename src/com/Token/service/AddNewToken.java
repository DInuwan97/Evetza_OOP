package com.Token.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Register.service.DBConnection;
import com.Token.model.NewToken;
import com.mysql.jdbc.Connection;

public class AddNewToken{
	
	Connection conn = null;
	public String user_id;

	
	public void addTokenNew(NewToken new_token,HttpServletRequest request) throws SQLException,ClassNotFoundException{
		
		
		
		HttpSession session = request.getSession(); //CREATING A SESSION OBJECT
		//session.setAttribute("sessionEmail",email);
		
		DBConnection db = new DBConnection();
		conn = DBConnection.getConnection();
		Statement s = conn.createStatement();
		
		String sql_user_id = "SELECT user_id FROM stakehoders where email = '"+session.getAttribute("sessionEmail")+"'";
		ResultSet resultSet_user_id = s.executeQuery(sql_user_id);

		
		if(resultSet_user_id.next()) {
			 user_id = resultSet_user_id.getString("user_id");
			
			String sql_add_token = "INSERT INTO tokens(stakeholder_id,token_title,added_date)VALUES('"+user_id+"','"+new_token.getTokenName()+"',NOW())";
			s.executeUpdate(sql_add_token);
		}
		
	
		
		
			
	}
	

}
