package com.Token.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Token.model.NewToken;
import com.Token.service.AddNewToken;

/**
 * Servlet implementation class SetTokenTitle
 */
@WebServlet("/SetTokenTitle")
public class SetTokenTitle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SetTokenTitle() {
        super();
        // TODO Auto-generated constructor stub
    }


	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NewToken new_token = new NewToken();
		AddNewToken addNewToken = new AddNewToken();
			
		new_token.setTokenName(request.getParameter("token_title"));
		
		try {
			
			//2object.servicemethod(1object)
			 addNewToken.addTokenNew(new_token,request);
			 response.sendRedirect("customer_pannel.jsp");				
			 return;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
	}

}
