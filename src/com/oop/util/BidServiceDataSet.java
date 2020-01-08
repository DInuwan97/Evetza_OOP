package com.oop.util;

import java.sql.ResultSet;
import java.sql.Statement;

import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;

public class BidServiceDataSet{
	
	private String sql_display_tokens_catering; 
	private SQLContactPageQueries sqlContactQueries;
	private ContactPageDataSet contactData;
	private BidServicesQueries bidServiceQueries;
	private BidServicesQueries bidServiceQryDetails;
	
	private Connection con = null;
	private ResultSet resultSet = null;
	private Statement s = null;

	public BidServiceDataSet(int tokenId) {
	
		bidServiceQueries = new BidServicesQueries(tokenId);
		
	}
	
	public BidServiceDataSet(int tokenId,int cateringId,int weddingId){
		bidServiceQryDetails =  new BidServicesQueries(tokenId,cateringId,weddingId);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	public ResultSet Sql_catering_token_details() {

		String sql_catering_token_details = bidServiceQueries.getSql_catering_token_details();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_catering_token_details);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	 return resultSet;
	}
	
	public ResultSet Sql_wedding_token_details() {

		String sql_wedding_token_details = bidServiceQueries.getSql_wedding_token_details();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_wedding_token_details);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	 return resultSet;
	}
	
	
	

	public ResultSet Sql_display_catering_ongoing_bid() {
		
		String sql_display_catering_ongoing_bid = bidServiceQryDetails.getSql_display_catering_ongoing_bid();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_display_catering_ongoing_bid);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	public ResultSet Sql_display_wedding_ongoing_bid() {
		
		String sql_display_wedding_ongoing_bid = bidServiceQryDetails.getSql_display_wedding_ongoing_bid();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_display_wedding_ongoing_bid);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	
	
	
	
	
	
	
	
	

}
