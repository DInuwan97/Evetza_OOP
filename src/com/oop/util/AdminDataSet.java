package com.oop.util;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.Register.service.DBConnection;

public class AdminDataSet extends ProviderDataSet{
	
	
	private String sql_admin_all_events;
	private String sql_display_customer_list;
	//private sqlQueris;
	
	
	
	public AdminDataSet() {
		sqlQueris = new SQLQueries();
	}	
	
	
	public AdminDataSet(HttpServletRequest request) {
		super(request);
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
	
	
	

}
