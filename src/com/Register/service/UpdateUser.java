package com.Register.service;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Register.model.NewUser;
import com.mysql.jdbc.Connection;

public class UpdateUser {
	
	private Connection conn = null;
	private Statement st_update_userDetails = null;
	private String sqlupdateUserDetails;
	
	public void updateUserDetails(NewUser newUser) throws SQLException,ClassNotFoundException{
		

		
		
		DBConnection db = new DBConnection();
		conn = db.getConnection();
		st_update_userDetails = conn.createStatement();
		
		try {
			
			sqlupdateUserDetails = "UPDATE stakehoders SET name= '"+newUser.getName()+"',email='"+newUser.getEmail()+"',mobile = '"+newUser.getMobile()+"',"
					+ "password = '"+newUser.getPassword()+"',confirm_password = '"+newUser.getConfirmPassowrd()+"' WHERE user_id = '"+newUser.getUserId()+"' ";
			
			st_update_userDetails.executeUpdate(sqlupdateUserDetails);
		} catch (Exception e) {
			System.out.println("Sql Update Eroor");
		}

		
		
		
		
		
	}
	

}
