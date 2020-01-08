package com.Register.service;

import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Register.model.UserAddress;
import com.mysql.jdbc.Connection;


import javax.servlet.http.HttpServletRequest;


public class AddUserAddress extends HttpServlet{
		

	public void addAddress (UserAddress user_address,HttpServletRequest request) throws SQLException,ClassNotFoundException {
		
		//HttpServletRequest request = new HttpServletRequest();
		
		Connection conn = null;

		HttpSession session = request.getSession(); //CREATING A SESSION OBJECT
		//session.setAttribute("sessionEmail",email);
		
		DBConnection db = new DBConnection();
		conn = DBConnection.getConnection();
		Statement s_Update_Address = conn.createStatement();
		
		String sql_Update_Address = "UPDATE stakehoders SET address_num = '"+user_address.getAddressNum()+"',street = '"+user_address.getStreet()+"',"
				+ " city = '"+user_address.getCity()+"',postal_code = '"+user_address.getPostalCode()+"' WHERE  email = '"+session.getAttribute("sessionEmail")+"'";
		
		
		s_Update_Address.executeUpdate(sql_Update_Address);
		
		
	}
	
	
	
}
