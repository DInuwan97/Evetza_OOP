package com.Register.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.management.Query;

import com.Register.model.NewUser;

import com.Register.service.DBConnection;
import com.oop.util.CommonConstarints;
//import com.oop.util.QueryUtil;

import jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode;



public class AddNewUser {
	
	public Connection conn = null;
	public ResultSet resultSet_customer_stk_tbl = null;
	public Statement s_customer_stk_tbl = null;
	public Statement s_insert_customer_tbl = null;
	
	
	public void addUser(NewUser nu) throws SQLException,ClassNotFoundException {
		
		
		DBConnection db = new DBConnection();
		conn = DBConnection.getConnection();
		Statement s = conn.createStatement();
		
		String insert = "INSERT INTO stakehoders(name,email,mobile,type,password,confirm_password,address_num,street,city,postal_code)VALUES('"+nu.getName()+"','"+nu.getEmail()+"',"
				+ "'"+nu.getMobile()+"','"+nu.getUserType()+"','"+nu.getPassword()+"','"+nu.getConfirmPassowrd()+"',0,0,0,0)";
		
		s.executeUpdate(insert);
		
		
		String sql_customer_stk_tbl = "SELECT user_id,type FROM stakehoders ORDER BY user_id DESC LIMIT 1";
		resultSet_customer_stk_tbl = s.executeQuery(sql_customer_stk_tbl);
		
		
		
		try {
			
			if(resultSet_customer_stk_tbl.next()) {
				
				
				if(resultSet_customer_stk_tbl.getString("type").equals("Customer")) {	
					
					
					
				 String user_id = resultSet_customer_stk_tbl.getString("user_id");	
					
				 	s_insert_customer_tbl = conn.createStatement();
				 	s_insert_customer_tbl.executeUpdate("INSERT INTO customer(stakeholder_id)VALUES('"+user_id+"')");
				 											
				}
				
				
				if(resultSet_customer_stk_tbl.getString("type").equals("Provider")) {	
					
					
					
					 String user_id = resultSet_customer_stk_tbl.getString("user_id");	
						
					 s_insert_customer_tbl = conn.createStatement();
					 s_insert_customer_tbl.executeUpdate("INSERT INTO provider(stakeholder_id,role)VALUES('"+user_id+"','"+nu.getUserRole()+"')");
					 											
				}
				
			
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}
	
	






}
