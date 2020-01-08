package com.Login.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.model.UserLogin;
import com.Login.service.CheckLogin;
import com.Register.service.DBConnection;
import com.mysql.fabric.Response;
import com.mysql.jdbc.Connection;


@WebServlet("/SetLoginDetails")
public class SetLoginDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static HttpServletResponse response;
	
	private static UserLogin ul = null;
	private static HttpSession session = null; 
	ResultSet rs_details;

	//Singleton pattern
	/*public static UserLogin getInstance() throws IOException {

		if(ul == null) {
			ul = new UserLogin();
			return ul;
		}
		else {
			System.out.println("Login Instance is already Created!");
			response.sendRedirect("invalidPwd.jsp");
			return null;
			 
		}
		
		
		
	}*/
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserLogin ul =  new UserLogin();//getInstance();
	
		CheckLogin chkl = new CheckLogin();
		
		//calling to setters
		ul.setEmail(request.getParameter("email"));
		ul.setPassword(request.getParameter("password"));
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		

		;
		
		try {
			
			rs_details = chkl.checkLogUser(ul);
			
			if(rs_details.next()){

				HttpSession session = request.getSession(); //creatig session object
				session.setAttribute("sessionEmail",email); //setting email to session
				ul = null;
			    response.sendRedirect("index.jsp");

			    	
			  }else {
				  ul = null;
				  response.sendRedirect("invalidPwd.jsp");
				 
			  }
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}
		
	
		
	}
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.removeAttribute("sessionEmail");
		session.invalidate();
		ul = null;							//when logging out session ,login object login object becomes to empty state
		response.sendRedirect("index.jsp");
		
		
	}
	
	
	
	
	
	
	
	
	
	
	

}
