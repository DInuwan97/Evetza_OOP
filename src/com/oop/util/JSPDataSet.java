package com.oop.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;

public class JSPDataSet {
	
	private ResultSet resultSet;
	SQLQueries sqlQueris;
	SQLQueries sqlQueris_Session;
	SQLQueries getCustomer_DetailsBy_Session;
	Connection con = null;
	Statement s = null;
	HttpServletRequest request = null;
	
	private String sql_admin_all_events;
	private String sql_display_customer_list;
	private String sql_display_provider_list;
	private String sql_purchase_confirmation_event;
	private String sql_customer_details;
	private String sql_my_events;
	
	
	public JSPDataSet() {
		sqlQueris = new SQLQueries();
		
		//if(sqlQueris_Session == null)
			//sqlQueris_Session = new SQLQueries(request);
	}
	
	public JSPDataSet(HttpServletRequest request){
		sqlQueris_Session = new SQLQueries(request);
		
	}
	
	public JSPDataSet(String tokenId) {
		getCustomer_DetailsBy_Session = new SQLQueries(tokenId);
	}
	
	//////////////////////////////displaying posted events to admin/////////////////////////////////////////////////
	public ResultSet Sql_admin_all_events() throws ClassNotFoundException, SQLException{
		
			
		
		sql_admin_all_events = sqlQueris.getSql_admin_all_events();
				
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_admin_all_events);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return resultSet ;
		
	}
	//////////////////////////////displaying posted events to admin/////////////////////////////////////////////////
	
	

	//////////////////////////////displaying current customers to admin/////////////////////////////////////////////////
	public ResultSet Sql_display_customer_list() throws ClassNotFoundException, SQLException{
		
		
		sql_display_customer_list = sqlQueris.getSql_display_customer_list();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_display_customer_list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	   return resultSet;
		
	}
	//////////////////////////////displaying current customers to admin/////////////////////////////////////////////////
	
	
	
	//////////////////////////////displaying current providers to admin/////////////////////////////////////////////////
	public ResultSet Sql_display_provider_list() throws ClassNotFoundException, SQLException{
		
	  sql_display_provider_list = sqlQueris.getSql_display_provider_list();
	  
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_display_provider_list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	  
		
		
		
	  return resultSet;
	  
	}
	//////////////////////////////displaying current providers to admin/////////////////////////////////////////////////

	
	
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
	
	
	//////////////////////////////displaying purchased events to admin /////////////////////////////////////////////////
	
	
	
	////////////////////////////display his event to current user//////////////////////////////////////////////
	public ResultSet Sql_my_events(){
		
		sql_my_events = sqlQueris_Session.getSql_my_events();
		
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_my_events);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return resultSet;
	}
	////////////////////////////display his event to current user//////////////////////////////////////////////
	
	
	

}
