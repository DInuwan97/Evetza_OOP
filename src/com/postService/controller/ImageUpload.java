package com.postService.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.Register.service.DBConnection;



@WebServlet("/PostService")
@MultipartConfig
public class ImageUpload extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private Connection conn;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
        System.out.println("fggggggggggggd: ");
    	
        String name=request.getParameter("name");
        String category = request.getParameter("category");
        String serviceDescription=request.getParameter("serviceDescription");
        String price=request.getParameter("price");
        String priceDescription=request.getParameter("priceDescription");

        /*InputStream uploadedInputStream = null;
        Part filePart = null;
        String image = "";
        filePart = request.getPart("image"); // Retrieves <input type="file" name="image">
            if (filePart != null) {
                image = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); //image->name
                uploadedInputStream = filePart.getInputStream();
            }
*/
    //    FileInputStream fis=new FileInputStream(new File(image));


        try {
    		DBConnection db = new DBConnection();
    		conn = DBConnection.getConnection();
        PreparedStatement ps=conn.prepareStatement
            ("insert into image(serviceName, serviceCategory,serviceDescription,price, priceDescription )values(?,?,?,?,?)");
        ps.setString(1,name);
        ps.setString(2,category);
        ps.setString(3,serviceDescription);
       // ps.setBinaryStream(4,uploadedInputStream);
        ps.setString(5,price);
        ps.setString(6,priceDescription);
        
        System.out.println("fggggggggggggd: ");
        int n = ps.executeUpdate();
        
        if(n>0) {
            response.getWriter().println("Successfully Uploaded!");
        }

        }catch(Exception e) {System.out.println("Image E: "+e);}
    }
}
