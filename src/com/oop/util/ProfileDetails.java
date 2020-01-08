package com.oop.util;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

public class ProfileDetails {
	
	private	SQLQueries sqlUserDetails;
	private ResultSet resultSet;
	
	public ProfileDetails(HttpServletRequest request){
		sqlUserDetails = new SQLQueries(request);
	}
	
	public ResultSet GetProfileDetails() {
		
		return resultSet;
	}
	
	
	
	

}
