package com.oop.util;

import java.sql.ResultSet;
import java.sql.Statement;

import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;

public class ContactPageDataSet {
	
	protected ResultSet resultSet;
	protected Connection con = null;	
	protected Statement s = null;
	SQLContactPageQueries sqlContactPageQueries;
	protected String sql_token_id_count_catering;
	
	//private SQLContactPageQueries sqlContactQry_Resctriction;
	
	public ContactPageDataSet(int tokenId) {
		 sqlContactPageQueries = new SQLContactPageQueries(tokenId);
	}
	
	//checking the tick
	public ResultSet checkTokenCountCatering() {
		sql_token_id_count_catering = sqlContactPageQueries.getSql_token_id_count_catering();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_token_id_count_catering);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;						
	}
	
	
	public ResultSet checkTokenCountWedding() {
		
	String sql_token_id_count_wedding = sqlContactPageQueries.getSql_token_id_count_wedding();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_token_id_count_wedding);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
	}
	//checking the tick
	
	
	
	
	public ResultSet Sql_contact_page_restrictions() {
		String sql_contact_page_restrictions = sqlContactPageQueries .getSql_contact_page_restrictions();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_contact_page_restrictions);
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
	}
	
	

}
