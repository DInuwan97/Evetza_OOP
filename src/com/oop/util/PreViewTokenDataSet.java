package com.oop.util;

import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;

public class PreViewTokenDataSet extends ContactPageDataSet{
	
	
	private ResultSet resultSet;
	private Connection con = null;	
	private Statement s = null;
	private HttpServletRequest request = null;
	
	private String sql_display_tokens_catering;
	private String sql_display_tokens_wedding;
	
	private String sql_get_catering_key;
	private String sql_get_wedding_key;
	
	private String sql_check_bid_key_catering;
	
	SQLPreViewTokenQueries sqlPreViewQueries;
	SQLPreViewTokenQueries sqlPreViewQueries_session;
	
	public PreViewTokenDataSet(int tokenId) {
		
		super(tokenId);		
		sqlPreViewQueries = new SQLPreViewTokenQueries(tokenId);
		
	}
	
	/*public PreViewTokenDataSet(int catering_key_id,int wedding_key_id,HttpServletRequest request) {
		
		super(0);
		sqlPreViewQueries_session = new SQLPreViewTokenQueries(catering_key_id,wedding_key_id,request); 
		
	}*/

	
	public ResultSet Sql_display_tokens_catering() {
		
		sql_display_tokens_catering = sqlPreViewQueries.getSql_display_tokens_catering();
		
			try {
				con = DBConnection.getConnection();         			
				s = con.createStatement();
				resultSet = s.executeQuery(sql_display_tokens_catering);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		 return resultSet;
	}
	
	public ResultSet Sql_display_tokens_wedding() {
		
		sql_display_tokens_wedding = sqlPreViewQueries.getSql_display_tokens_wedding();
		
			try {
				con = DBConnection.getConnection();         			
				s = con.createStatement();
				resultSet = s.executeQuery(sql_display_tokens_wedding);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		 return resultSet;
	}
	
	
	
	
	
	public ResultSet Sql_get_catering_key() {
		
		
		sql_get_catering_key = sqlPreViewQueries.getSql_get_catering_key();
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_get_catering_key);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
	}
	
	public ResultSet Sql_get_wedding_key() {
		
		
		sql_get_wedding_key = sqlPreViewQueries.getSql_get_wedding_key();
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_get_wedding_key);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
	}
	
	
	
	
	public ResultSet Sql_check_bid_key_catering() {
		
		
		sql_check_bid_key_catering = sqlPreViewQueries.getSql_check_bid_key_catering();
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_check_bid_key_catering);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return resultSet;
	}
	


}
