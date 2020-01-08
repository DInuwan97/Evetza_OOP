package com.oop.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;

public class CustomerDataSet {
	
	protected ResultSet resultSet;
	SQLQueries sqlQueris;
	SQLQueries sqlQueris_Session;
	//SQLQueries getCustomer_DetailsBy_Session;
	protected Connection con = null;
	protected Statement s = null;
	protected HttpServletRequest request = null;
	
	
	protected String sql_my_events;
	protected String sql_display_provider_list;
	
	
	
	public  CustomerDataSet() {
		sqlQueris = new SQLQueries();
	}
	
	public  CustomerDataSet(HttpServletRequest request){
		sqlQueris_Session = new SQLQueries(request);	
	}
	
	/*public  CustomerDataSet(String tokenId) {
		getCustomer_DetailsBy_Session = new SQLQueries(tokenId);
	}
	*/
	
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
	
	
	
//////////////////////////////displaying current providers/////////////////////////////////////////////////
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
	
	
	

}
