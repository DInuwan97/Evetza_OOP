package com.PurchaseService.service;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.PurchaseService.model.PurchaseWedding;
import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;









public class AddPurchaseWedding {
	
	public void addWeddingPuchase(PurchaseWedding pur_wed,HttpServletRequest request) throws SQLException,ClassNotFoundException{
		
		

		String added_id = null;
		String purchase_id = null;
		
		
		HttpSession session = request.getSession(); //CREATING A SESSION OBJECT
		//session.setAttribute("sessionEmail",email);
		
		DBConnection db = new DBConnection();
		Connection conn = DBConnection.getConnection();
		
		
		String url_id = request.getParameter("url"); // assign query string id
		
		Statement s_get_user_id = conn.createStatement();
		String sql_get_user_id = "SELECT user_id FROM stakehoders where email = '"+session.getAttribute("sessionEmail")+"'";
		ResultSet rs_get_user_id = s_get_user_id.executeQuery(sql_get_user_id);
		
		Statement s_get_token_stakeholder_id = conn.createStatement();
		String sql_get_token_stakeholder_id = "SELECT stakeholder_id FROM tokens where token_id = '"+url_id+"'";
		ResultSet rs_get_token_stakeholder_id = s_get_token_stakeholder_id.executeQuery(sql_get_token_stakeholder_id);
		
	
		
		

		if(rs_get_user_id.next() && rs_get_token_stakeholder_id.next()){	
			
			purchase_id =  rs_get_user_id.getString("user_id");
			added_id = rs_get_token_stakeholder_id.getString("stakeholder_id");
			
		}
		
		String wedding_bid_amount = request.getParameter("wedding_cost");
		String wedding_type_id = request.getParameter("wedding_type_id");
		
		
		
		
		Statement s_add_purchase_wedding= conn.createStatement();
		/*String sql_add_purchase_wedding = "INSERT INTO bidservice(token_id,added_id,purchase_id,service_type,type_id,bid_amount,forward_status,confirmation)VALUES"
				+ "(1,1,1,'Wedding',1,5500,'OnlyAdmin','Pending')";*/
		
		String sql_add_purchase_wedding = "INSERT INTO bidservice(token_id,added_id,purchase_id,service_type,type_id,bid_amount,confirmation)VALUES"
		+ "('"+url_id+"','"+added_id+"','"+purchase_id+"','Wedding','"+wedding_type_id+"','"+wedding_bid_amount+"','Pending')";
		
		s_add_purchase_wedding.executeUpdate(sql_add_purchase_wedding);
		
		
				
		
	}

}
