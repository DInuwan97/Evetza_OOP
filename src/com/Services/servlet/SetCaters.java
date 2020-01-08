package com.Services.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Services.model.Caters;
import com.Services.service.AddCaters;


@WebServlet("/SetCaters")
public class SetCaters extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Caters ct = new Caters();
		AddCaters act = new AddCaters();
		

		
		
		ct.setReq_date(request.getParameter("req_date"));
		ct.setDesert(request.getParameter("deserts"));
		ct.setMeal(request.getParameter("meal"));
		ct.setVetors(request.getParameter("vetor"));
		ct.setNo_of_plates(request.getParameter("no_of_plates"));
		ct.setVisiblility(request.getParameter("visibility"));
		//menu
		
		
		try {
			
			//2object.servicemethod(1object)
			act.addCatering(ct,request);
			 response.sendRedirect("customer_pannel.jsp");				
			 return;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		int token_id = Integer.parseInt(request.getParameter("id"));
		request.setAttribute("id", token_id);
		request.getRequestDispatcher("").forward(request,response); 
		

	}
*/
	

	
	
	
	
	
	
	

}
