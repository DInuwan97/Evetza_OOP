package com.PurchaseService.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.PurchaseService.model.PurchaseCatering;
import com.PurchaseService.service.AddPurchaseService;

/**
 * Servlet implementation class SetPurchaseCatering
 */
@WebServlet("/SetPurchaseCatering")
public class SetPurchaseCatering extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PurchaseCatering pur_ct = new PurchaseCatering();
		AddPurchaseService add_pur_ct = new AddPurchaseService();
		
		pur_ct.setAmount(request.getParameter("catering_cost"));	
		pur_ct.setForwardAdmin("OnlyAdmin");
		pur_ct.setConfirmation("Pending");
		pur_ct.setTypeCatering("Catering");
		pur_ct.setCateringTypeId(request.getParameter("catering_type_id"));
		
		
		try {
			
			//2object.servicemethod(1object)
			add_pur_ct.addCateringPurchase(pur_ct,request);
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
