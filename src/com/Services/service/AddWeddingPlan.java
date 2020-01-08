package com.Services.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Register.service.DBConnection;
import com.Services.model.WeddingPlan;
import com.mysql.jdbc.Connection;

public class AddWeddingPlan {
	
	private String user_id;
	
	public void addWeddingDetails(WeddingPlan wp,HttpServletRequest request) throws SQLException,ClassNotFoundException {
		
		HttpSession session = request.getSession(); //CREATING A SESSION OBJECT
		//session.setAttribute("sessionEmail",email);
		
		DBConnection db = new DBConnection();
		Connection conn = DBConnection.getConnection();
		Statement s_add_weddingPlan= conn.createStatement();
		
		String url_id = request.getParameter("url"); // assign query string id
		
		Statement s_get_user_id = conn.createStatement();
		String sql_get_user_id = "SELECT user_id FROM stakehoders where email = '"+session.getAttribute("sessionEmail")+"'";
		ResultSet rs_get_user_id = s_get_user_id.executeQuery(sql_get_user_id);
		
		
		if(rs_get_user_id.next()){		
			user_id =  rs_get_user_id.getString("user_id");
		}
		
		
		String sql_add_wedding_plan = "INSERT INTO wedding(token_id,stakeholder_id,req_date,meal_type,costume_type,theme_type,vehicle_type,visibility) VALUES("
				+ "'"+url_id+"',"+user_id+",'"+wp.getReq_date()+"','"+wp.getMeal_type()+"','"+wp.getCostume_type()+"','"+wp.getTheme_type()+"','"+wp.getVehicle_type()+"','"+wp.getVisibility()+"')";
		
		
		s_add_weddingPlan.executeUpdate(sql_add_wedding_plan);
		
		
	}
	
	
	

}
