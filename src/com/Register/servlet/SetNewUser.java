package com.Register.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.InputMismatchException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Register.model.NewUser;
import com.Register.service.AddNewUser;

/**
 * Servlet implementation class SetNewUser
 */
@WebServlet("/SetNewUser")
public class SetNewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String cpword;
	private String pword;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NewUser nu = new NewUser();
		AddNewUser adNewUser = new AddNewUser();
		
		
		nu.setName(request.getParameter("Name"));
		nu.setEmail(request.getParameter("Email"));
		nu.setMobile(Integer.parseInt(request.getParameter("phone")));
		nu.setPassword(request.getParameter("Password"));
		nu.setConfirmPassowrd(request.getParameter("ConfirmPassword"));
		nu.setUserType(request.getParameter("type"));
		nu.setUserRole(request.getParameter("role"));
		
		pword =  request.getParameter("Password");
		cpword = request.getParameter("ConfirmPassword");
		
			
		
		try {
			
			if(pword != cpword) {
				response.sendRedirect("pwdMismatch.jsp");
			}
			
						
			adNewUser.addUser(nu);	//model class object is passesd to service's function through service class type object	
			response.sendRedirect("registrationSuccess.jsp");
			
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		
			
		} catch (InputMismatchException e) {	
			System.out.println("Input Mismatching Exception");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("General Exception");
		}
		finally{
			System.out.println("Terminated");
		}
		
		
		
		
	}

}
