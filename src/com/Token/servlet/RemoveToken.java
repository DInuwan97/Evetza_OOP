package com.Token.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Register.service.DBConnection;
import com.Token.model.SetRemoveToken;
import com.Token.service.TokenRemoveProcess;
import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class RemoveToken
 */
@WebServlet("/RemoveToken")
public class RemoveToken extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SetRemoveToken st_rmv_token = new SetRemoveToken();
		
		st_rmv_token.setTokenId(request.getParameter("tokenID"));
		

		
		TokenRemoveProcess tk_rmv_process = new TokenRemoveProcess();
	
		try {
			
			tk_rmv_process.removeToken(st_rmv_token);
			response.sendRedirect("tokenRemove.jsp");
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
