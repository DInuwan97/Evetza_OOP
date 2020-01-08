<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

		<link rel="stylesheet" href="css/registration.css">
		<script src="js/regscripts.js"></script>

<title>Error</title>
</head>

	</br>
	</br>
	
	</br>
	
	<body style="background: #0F90A5;">
	
	<%@page import="com.Home.HomeThread"%>
	
	<%
	

	//response.sendRedirect("index.jsp");
	

	
	
	Thread t= new Thread(new Runnable() {
		int prcentage = 0;
		
		private int total = 0;
		
		private HttpServletResponse response;
		
            @Override
            public void run() {
                
                for(int i = 0 ;i < 100; i = i + 10){
                    
                	
                	
                	total = i + 10;
        			prcentage = total;
        			System.out.println(prcentage+ "%");
        			try {
        								
        				Thread.sleep(200);
        				
        				
        			} catch (InterruptedException e) {
        			
        				e.printStackTrace();
        			}
        			
        			if(prcentage == 90) {
        				
        				//break;	
        			}
                }
                
                
  
                
            }
        });
 
        t.start();  
    	
	%>
	
	
	
	
	
	</br></br>	</br></br>
	<div id = "registration"><br>
	
		<h1>Oops!!!</h1>
		
		<hr>
		<h2>Something Went Wrong</br>Your Password is not Correct!</h2>
		<img id = "green-tick" src="images/error.png" ><br><br>
		
		<div class="clearfix">
			<button class="returnbtn"><a href="index.jsp" style="color:white;">Back to Home</a></button>
		</div><br><br>
		
	<div>
	
	
	
	
	

	</body>



</html>