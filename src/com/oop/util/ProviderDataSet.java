package com.oop.util;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.Register.service.DBConnection;

public class ProviderDataSet extends CustomerDataSet {
	
	
	
	protected SQLQueries getCustomer_DetailsBy_Session;
	
	private String sql_provider_all_events;
	
	protected String sql_purchase_confirmation_event;
	protected String sql_customer_details;
	
	
	public ProviderDataSet(){
		sqlQueris = new SQLQueries();
	}
	
	
	public ProviderDataSet(HttpServletRequest request) {
		super(request);
		//sqlQueris_Session = new SQLQueries(request);	
	}
	
	
	public ProviderDataSet(String tokenId) {
		getCustomer_DetailsBy_Session = new SQLQueries(tokenId);
	}
	

	
	
	public ResultSet Sql_provider_all_events() {
		
		sql_provider_all_events = sqlQueris.getSql_provider_all_events();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_provider_all_events);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
		
	}
	
	
	
	
	
	
			
		//////////////////////////////displaying purchased events to admin/////////////////////////////////////////////////
		////////Outer Part/////////////////
	
		public ResultSet Sql_purchase_confirmation_event() {
		
		sql_purchase_confirmation_event = sqlQueris_Session.getSql_purchase_confirmation_event();
		
		try {
		con = DBConnection.getConnection();         			
		s = con.createStatement();
		resultSet = s.executeQuery(sql_purchase_confirmation_event);
		
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		
		return resultSet;
		
		}
		
		
		//////////Inner Part////////////////////	
		public ResultSet Sql_customer_details(){
		
			sql_customer_details = getCustomer_DetailsBy_Session.getSql_customer_details();
			
				try {
					con = DBConnection.getConnection();         			
					s = con.createStatement();
					resultSet = s.executeQuery(sql_customer_details);
				
				} catch (Exception e) {
					e.printStackTrace();
				}
			
		
		return resultSet;
		
		}
	

}
