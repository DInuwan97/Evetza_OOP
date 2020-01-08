package com.Token.service;

import java.sql.SQLException;
import java.sql.Statement;

import com.Register.service.DBConnection;
import com.Token.model.SetRemoveToken;
import com.Token.servlet.RemoveToken;
import com.mysql.jdbc.Connection;

public class TokenRemoveProcess {

    
	private String sql_delete_token;
	private Connection con = null;
	private Statement s = null;
	
	
	
	public void removeToken(SetRemoveToken rm) throws ClassNotFoundException, SQLException {
		
		System.out.println("Token Id : " +rm.getTokenId());

		con = DBConnection.getConnection();         			
		s = con.createStatement();
		sql_delete_token = "DELETE FROM tokens where token_id = '"+rm.getTokenId()+"'";
		
		s.executeUpdate(sql_delete_token);
		
	
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
