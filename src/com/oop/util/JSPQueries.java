package com.oop.util;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class JSPQueries {
	public String sql_display_tokens;
	

	public String tokenId;
	public String tokenTitle;
	public String stakeholderName;
	


	public ArrayList sql_display_token_to_admin() throws ClassNotFoundException{
		
	
		JSPQueries tokenDetails = new JSPQueries();
		
		
		ArrayList<JSPQueries> ar = new ArrayList<>();
		
		try {
			
			
			Connection con = DBConnection.getConnection();         			
			Statement s = con.createStatement();
			
			sql_display_tokens = "SELECT tk.token_id,tk.token_title,stk.name FROM tokens tk , stakehoders stk WHERE tk.stakeholder_id = stk.user_id";
			
			ResultSet resultSet = s.executeQuery(sql_display_tokens);
			
			while(resultSet.next()) {
		
				
				//tokenDetails.setTokenId(resultSet.getString("token_id"));
				//tokenDetails.setTokenTitle(resultSet.getString("token_title"));
				//tokenDetails.setStakeholderName(resultSet.getString("name"));
				
				tokenId = resultSet.getString("token_id");
				tokenTitle = resultSet.getString("token_title");
				stakeholderName = resultSet.getString("name");
				
				
				/*tokenDetails.getTokenId();
				tokenDetails.getTokenTitle();
				tokenDetails.getStakeholderName();
				*/
				ar.add(tokenDetails);
				
				//System.out.println(tokenDetails.getTokenTitle());
			}
			
						
		} catch (SQLException e) {
			System.out.println("Query mismatching");
		}
		
		return ar;
		
	}
	
	
	
/*		
	public String getTokenId() {
		return tokenId;
	}
*/

	public void setTokenId(String tokenId) {
		this.tokenId = tokenId;
	}

/*
	public String getTokenTitle() {
		return tokenTitle;
	}
*/

	public void setTokenTitle(String tokenTitle) {
		this.tokenTitle = tokenTitle;
	}


	/*public String getStakeholderName() {
		return stakeholderName;
	}
*/
	

	public void setStakeholderName(String stakeholderName) {
		this.stakeholderName = stakeholderName;
	}

	

}
