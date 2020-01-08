package com.PurchaseService.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import com.PurchaseService.model.PurchaseWedding;
import com.PurchaseService.service.AddPurchaseWedding;


@WebServlet("/SetPuchaseWedding")
public class SetPuchaseWedding extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PurchaseWedding pur_wed = new PurchaseWedding();
		AddPurchaseWedding add_pur_wed = new AddPurchaseWedding();
		
		/*
		pur_wed.setAmount(request.getParameter("wedding_cost"));
		pur_wed.setConfirmation("Pending");
		pur_wed.setForwardAdmin("OnlyAdmin");
		pur_wed.setTypeWedding("Wedding");
		pur_wed.setWeddingTypeId(request.getParameter("wedding_type_id"));
		*/
				try {
			
			
					//2object.servicemethod(1object)
					 add_pur_wed.addWeddingPuchase(pur_wed,request);
					 response.sendRedirect("admin.jsp");				
					 return;
				
				} catch (SQLException e) {
					e.printStackTrace();
					System.out.println("Upset quey");
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("cLASS NOT FOND");
				}
				
		
		
		
		
		
		
	}

}
