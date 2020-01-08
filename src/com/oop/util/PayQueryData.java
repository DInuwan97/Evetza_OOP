package com.oop.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;

import com.oop.util.PayQuery;

public class PayQueryData {
	
	private PayQuery pay_query;
	private String sql;
	private ResultSet resultSet;
	
	Connection con = null;
	Statement s = null;
	HttpServletRequest request = null;
	
	
	
	public PayQueryData(int tok_id)
	{		
		pay_query = new PayQuery(tok_id);			
	}
	
	public ResultSet exeQuery()throws ClassNotFoundException, SQLException
	{
		
		sql = pay_query.getQuery(); 
			
			try {
				
				con = DBConnection.getConnection();         			
				s = con.createStatement();
				resultSet = s.executeQuery(sql);
				
				}
			catch(Exception e)
			{
			
				e.printStackTrace();
				
			}
			
			
			
			return resultSet ;
			
			
			
			
		}
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


