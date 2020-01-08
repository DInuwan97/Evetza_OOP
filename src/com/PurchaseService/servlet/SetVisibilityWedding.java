package com.PurchaseService.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.PurchaseService.model.VisibilityStatus;

import com.PurchaseService.service.UpdateWeddingVisibility;
import com.Register.service.DBConnection;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


@WebServlet("/SetVisibilityWedding")
public class SetVisibilityWedding extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String visilibility = "ToAll";
       


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VisibilityStatus visibility = new VisibilityStatus();
		UpdateWeddingVisibility updateVisibility = new UpdateWeddingVisibility();
		
		
		visibility.seTtokenId(request.getParameter("url"));
		
		try {
			
			//2object.servicemethod(1object)
			updateVisibility.updateVisibilityId(visibility,request);
			 response.sendRedirect("admin.jsp");				
			 return;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	}

}
