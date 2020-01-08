package com.Payment.service;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Register.service.DBConnection;
import com.Services.model.Caters;
import com.Token.service.AddNewToken;
import com.mysql.jdbc.Connection;
import com.sun.org.apache.regexp.internal.recompile;
import com.Payment.model.Payment;
import com.Payment.servlet.SetPayment;


public class AddPayment{
	
	private String sql_check_cardDetails;
	private double newBalance;
	private String sql_update_CardDetails;
	private int cardId;
	private HttpServletRequest request;
	private String sql_Insert_purchased_event;
	int url_bid_id;
	HttpServletResponse response;
	
	
	
	
	
	public  AddPayment(int id) {
		url_bid_id = id;
		
	}
	
	
	

	
	public void addPayment(Payment pm,HttpServletRequest request) throws SQLException,ClassNotFoundException{
	
		
	
		
			DBConnection db = new DBConnection();
			Connection conn = db.getConnection();
			Statement st = conn.createStatement();	
			
			sql_check_cardDetails = "SELECT * FROM card_details WHERE card_name = '"+pm.getCardName()+"' AND card_no = '"+pm.getCardNo()+"' AND cvc = '"+pm.getCvc()+"'AND exp_Date = '"+pm.getExpDate()+"'";
			
			ResultSet rs_check_cardDetails = st.executeQuery(sql_check_cardDetails);
			
			//above part is validating the card
	
			
			System.out.println("Successfull up to point");
			System.out.println("Url bi id : " +url_bid_id);
			
			if(rs_check_cardDetails.next()) {
				
				//below part is check the balance if it is enoung
				double currentBalance = Double.parseDouble(rs_check_cardDetails.getString("balance"));
				double eventAmount = Double.parseDouble(pm.getBalance()); //model eke balance eka double karaddi methna change karapn
				
				int cardId = Integer.parseInt(rs_check_cardDetails.getString("card_id"));
				
				System.out.println("bid id : " +url_bid_id);
				
				if(currentBalance > eventAmount) {
					
					
					newBalance = currentBalance - eventAmount;
					
					//update the card details
					sql_update_CardDetails = "UPDATE card_details SET balance = '"+newBalance+"' WHERE card_id = '"+cardId+"'";
					st.executeUpdate(sql_update_CardDetails);
					
					
					//url_bid_id = Integer.parseInt(request.getParameter("id"));
					System.out.println("bid id : " +url_bid_id);
					
					sql_Insert_purchased_event = "INSERT INTO purchased_event(bid_id,corier_status,payed_date)VALUES('"+url_bid_id+"','Pending',NOW())";
					st.executeUpdate(sql_Insert_purchased_event);
					
					
					System.out.println("Payment Successfull!!!");
					
				}
				else {
					System.out.println("Insufficient Balance!");
			
				}
				
		}
			else {
				
				System.out.println("Card validate is no correct");
				
			}
			

	}
	
	
}



























