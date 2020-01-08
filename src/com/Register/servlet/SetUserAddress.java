package com.Register.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Register.model.UserAddress;
import com.Register.service.AddUserAddress;

/**
 * Servlet implementation class SetUserAddress
 */
@WebServlet("/SetUserAddress")
public class SetUserAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public SetUserAddress() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserAddress user_address = new UserAddress();
		AddUserAddress add_address = new AddUserAddress();
		
		user_address.setAddressNum(request.getParameter("address_num"));
		user_address.setStreet(request.getParameter("street"));
		user_address.setCity(request.getParameter("city"));
		user_address.setPostalCode(request.getParameter("postal_code"));
		
	try {
			
			add_address. addAddress(user_address, request);
			//adNewUser.addUser(nu);
			response.sendRedirect("index.jsp");
			
			return;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
