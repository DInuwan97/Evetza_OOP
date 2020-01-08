package com.Register.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Register.model.NewUser;
import com.Register.service.UpdateUser;

/**
 * Servlet implementation class SetUpdateUser
 */
@WebServlet("/SetUpdateUser")
public class SetUpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetUpdateUser() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NewUser newUser = new NewUser();
		UpdateUser updateUser = new UpdateUser();
		
		newUser.setName(request.getParameter("name"));
		newUser.setEmail(request.getParameter("email"));
		
		System.out.println("sening Update Eroor 1 ");
		
		
		newUser.setMobile(Integer.parseInt( request.getParameter("mobile")));
		System.out.println("sening Update Eroor 2 ");
		newUser.setPassword(request.getParameter("password"));
		System.out.println("sening Update Eroor 3 ");
		newUser.setPassword(request.getParameter("confirm_password"));
		System.out.println("sening Update Eroor 4 ");
		newUser.setUserId(Integer.parseInt(request.getParameter("hidden_user_id")));
		
		System.out.println("sening Update Eroor 5");
		
		try {
			updateUser.updateUserDetails(newUser);
			response.sendRedirect("updateSuccess.jsp");
			
			
		} catch (Exception e) {
			System.out.println("Not Updated");
		}
	
	}

}
