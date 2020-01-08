package com.Login.service;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import com.Register.service.DBConnection;
import com.Login.model.UserLogin;
import com.mysql.jdbc.Connection;

public class CheckLogin extends HttpServlet {
	
	Connection con = null;
	public ResultSet rs_details = null;
	
		public ResultSet checkLogUser(UserLogin ul)  throws SQLException,ClassNotFoundException{
		
		try {
			
		con = DBConnection.getConnection();
		Statement s_login = con.createStatement();
		
		String user_details = "SELECT email,password FROM stakehoders WHERE email = '"+ul.getEmail()+"' AND password = '"+ul.getPassword()+"'";
		
		rs_details = s_login.executeQuery(user_details);
	
		
			 
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Error Ocuured");
			
		} catch(Exception e) {
			System.out.println(e);
		}
		

		return rs_details;	
	}
	
	
	

}

