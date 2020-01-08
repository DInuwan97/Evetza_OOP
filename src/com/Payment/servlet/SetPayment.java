package com.Payment.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Payment.model.Payment;
import com.Payment.service.AddPayment;


 //implementation class SetPayment
 

@WebServlet("/SetPayment")
public class SetPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
		Payment pm = new Payment();
		
	
		pm.setCardNo(request.getParameter("card_no"));
		pm.setCardName(request.getParameter("card_name"));
		pm.setCvc(request.getParameter("cvc"));
		pm.setExpDate(request.getParameter("expDate"));
		pm.setBalance(request.getParameter("balance"));
		
		int url_id = Integer.parseInt(request.getParameter("url_id"));
	
		AddPayment ad_payment = new AddPayment(url_id);
		

		try {
			
			ad_payment.addPayment(pm,request);	
			response.sendRedirect("paymentSuccess.jsp");
			
		}catch (Exception e) {
			
			
			
			e.printStackTrace();
			
			
		}
		
		
		
	}

	

}
