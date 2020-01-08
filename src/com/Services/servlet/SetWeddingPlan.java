package com.Services.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Services.model.WeddingPlan;
import com.Services.service.AddWeddingPlan;


@WebServlet("/SetWeddingPlan")
public class SetWeddingPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		WeddingPlan wp = new WeddingPlan();
		AddWeddingPlan add_wp = new AddWeddingPlan();
		
		wp.setCostume_type(request.getParameter("costume_type"));
		wp.setMeal_type(request.getParameter("meal_type"));
		wp.setReq_date(request.getParameter("req_date"));
		wp.setTheme_type(request.getParameter("theme_type"));
		wp.setVehicle_type(request.getParameter("vehicle_type"));
		wp.setVisibility("ToAdmin");
		
		try {
			
			//2object.servicemethod(1object)
			add_wp.addWeddingDetails(wp,request);
			 response.sendRedirect("customer_pannel.jsp");				
			 return;
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Upset quey");
			
		} catch (ClassNotFoundException e) {
			System.out.println("cLASS NOT FOND");
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
