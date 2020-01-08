package com.oop.util;

import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;

public class SessionDetails {
	
	private ResultSet resultSet;
	Connection con = null;
	Statement s = null;
	HttpServletRequest request = null;
	SQLQueries sqlQueris_Session;
	private String sql_pass_sessionTo_header;
	
	
	public SessionDetails(HttpServletRequest request){
		sqlQueris_Session = new SQLQueries(request);	
	}
	
	
	
	public ResultSet Sql_pass_sessionTo_header() {
		
		sql_pass_sessionTo_header = sqlQueris_Session.getSql_pass_sessionTo_header();
				
		try {
			con = DBConnection.getConnection();         			
			s = con.createStatement();
			resultSet = s.executeQuery(sql_pass_sessionTo_header);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return resultSet ;
	}
	
	

}
