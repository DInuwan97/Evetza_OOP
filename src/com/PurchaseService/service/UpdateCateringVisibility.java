package com.PurchaseService.service;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.PurchaseService.model.VisibilityStatus;
import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class UpdateCateringVisibility {
	
	
	
	public void updateCateringVisibilityId(VisibilityStatus visibility,HttpServletRequest request) throws SQLException,ClassNotFoundException {
		
		DBConnection db = new DBConnection();
		Connection conn = DBConnection.getConnection();
		
		
		Statement s_get_catering_key_visibility = (Statement) conn.createStatement();
	 	String sql_get_catering_key_visibility = "SELECT DISTINCT bs.type_id  FROM bidservice bs,catering ct WHERE bs.type_id = ct.catering_id and bs.token_id = ct.token_id AND bs.token_id = '"+visibility.getTokenId()+"' ";
	 	ResultSet rs_get_catering_key_visibility = s_get_catering_key_visibility.executeQuery(sql_get_catering_key_visibility);
	 	
	 	if(rs_get_catering_key_visibility.next()) {
	 		
	 		//String token_id = rs_get_wedding_key.getString("unique_type_id_wedding");
	 		
	 		Statement s_update_visibility_All = (Statement) conn.createStatement();
	 		String sql_update_visibility_All = "UPDATE catering SET visibility = 'ToAll' WHERE catering_id = '"+rs_get_catering_key_visibility.getString("type_id")+"'";
	 		
	 		s_update_visibility_All.executeUpdate(sql_update_visibility_All);
	 		
	 		
	 			
	 		
	 	}
		
	}
	
	
	
	
	
	

}
