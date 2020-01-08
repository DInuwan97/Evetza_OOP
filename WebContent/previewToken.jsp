<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>

		
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>


<%@page import="com.Register.service.DBConnection"%>
<%@page import="com.oop.util.ContactPageDataSet "%>
<%@page import="com.oop.util.PreViewTokenDataSet"%>
<%@page import="com.oop.util.SQLPreViewTokenQueries"%>

					 <%
			
				
		          			/*try {
		          				
		          			
		          			Connection con = DBConnection.getConnection();
		          			
		        			Statement s_validate = con.createStatement();
		        			String sql_validate = "SELECT * FROM stakehoders where email = '"+session.getAttribute("sessionEmail")+"'";
		        			ResultSet rs_validate = s_validate.executeQuery(sql_validate);
		        			
							if(rs_validate.next()){
		        				
		        				if(rs_validate.getString("type").equals("Customer") || session.getAttribute("sessionEmail").equals("")){
		        					
		        					response.sendRedirect("index.jsp");	
		        					
		        				}
		        				
		        			}
		        			
		        			
		        			
		        			
		        			}catch(Exception e){
		        				e.printStackTrace();
		        			}*/
		    		 %>
		    		 
		    		 
		    		 
		    		 













				<script type="text/javascript">
				
								function getCurrentURL() {
									var url = window.location.href
									//document.write(url)
									return url;
								}
							
				</script>




			<div class="w3layouts-inner-banner">
		<div class="container">
			<div class="logo">
				<h1><a class="cd-logo link link--takiri" href="index.html">Match <span><i class="fa fa-heart" aria-hidden="true"></i>Made in heaven.</span></a></h1>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //inner banner -->	
	
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <span>Added Services</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->

	<!-- contact section -->
	<div class="w3ls_contact_section">
		<div class="container">

			<div class="w3_locations">
				<h2>Added Services</h2>
				<div class="resp-tabs-container hor_1">
					<div>
							<!--vertical Tabs-->
							
							<script type="text/javascript">
							<%
								String token_id = null;
							%>
								var url_check_id = window.location.href.substring(45, 47);
								var token_url_id = url_check_id; 
								<%= token_id %> = url_check_id;
								console.log(token_url_id);
								document.write('URL: <input type="text" name="url_check_id" id="url_check_id" value="'+window.location.href.substring(45, 47)+'">');
							</script>

						<div id="ChildVerticalTab_1">
							<ul class="resp-tabs-list ver_1">
							
							
								
								<li>Catering	
							
			<%
			 	Connection connection = null;
			 	Statement s_token_id = null;
			  	//ResultSet rs_get_token_id = null;
				int url_id_check = 0;
				//String url_id_check = null;
			 	//ResultSet resultSet1 = null;
				
		          		
		          				
		          			
		          			Connection con = DBConnection.getConnection();
		          			
		        			s_token_id = con.createStatement();
		        			
		        	//////////////////////////////////////////////////////////////////////////////////////////////////////
		        			//url_id_check = Integer.parseInt(request.getParameter("url_check_id"));
		        			//url_id_check = request.getParameter("id");
		        	//////////////////////////////////////////////////////////////////////////////////////////////////////
		        			//SQLQueries sqlQueries = new SQLQueries();
		        			//sqlQueries.setSql_token_id(url_id_check);
		        			
	        			//String sql_token_id = "SELECT COUNT(token_id) as 'counter' FROM catering WHERE token_id = '"+url_id_check+"'";
		        			
		        			//ResultSet rs_get_token_id =  preViewToken.checkTokenCount();
		        			//rs_get_token_id = s_token_id.executeQuery(sql_token_id);
		        			
		        
		         url_id_check = Integer.parseInt(request.getParameter("id"));
		         PreViewTokenDataSet preViewToken = new PreViewTokenDataSet(url_id_check);

		        		ResultSet rs_get_token_id_catering = preViewToken.checkTokenCountCatering();
		        			
		        			if(rs_get_token_id_catering.next()){
		        				
		        			if(rs_get_token_id_catering.getString("counter").equals("1")){
		        				
		        			
		     %>
							
							
							
							
							
									<i style="color:green; float:right;" class="fas fa-check fa-2x"></i>
								
			<%
		        			}
		        		}
		          			
			%>					
								
								</li>
								
								<li>Cordinating Plan	
								
								<%
								
							/*	String sql_token_id_wedding = "SELECT COUNT(token_id) as 'counter' FROM wedding WHERE token_id = '"+request.getParameter("id")+"'";
			        			ResultSet rs_get_token_id_wedding = s_token_id.executeQuery(sql_token_id_wedding);
			        			
			        			url_id_check = request.getParameter("id");
			        		*/
			        		
			        	     url_id_check = Integer.parseInt(request.getParameter("id"));
					        ResultSet rs_get_token_id_wedding = preViewToken.checkTokenCountWedding();
	
					        			/*SQLQueries sqlQueries = new SQLQueries();
					        			sqlQueries.setSql_token_id(url_id_check);
					        			PreViewTokenDataSet preViewToken = new PreViewTokenDataSet();
					        			ResultSet rs_get_token_id_wedding =  preViewToken.checkTokenCount();
					        			*/
			        
			        			
			        			if(rs_get_token_id_wedding.next()){
			        				
			        			if(rs_get_token_id_wedding.getString("counter").equals("1")){
								%>
								
								
								
								
								
									<i style="color:green; float:right;" class="fas fa-check fa-2x"></i>
									
									
									
								<%
			        			}
			        			}
								%>
								</li>
								
								
								
								<li>Hotel Reservation</li>
								<li>Vehicle Rentering</li>
								<li>Gift Purchasing</li>
								<li>Ticket Sell</li>
								
								
								
								
								
						
							</ul>
							<div class="resp-tabs-container ver_1">
								<div>
									<section class="w3_g_address">
								

			<div class="container">
			
					<div class="col-md-9 profiles-list-agileits">


						<div class="resp-tabs-container hor_1">
						
						
						<div>	
							<div class="w3_regular_search">


								
							
								
					
					
					<%
					 //Connection connection = null;
			
					 
					 				 
					 try{
						 
							
	
		        			
							//Connection con = DBConnection.getConnection();
		          			
		        			Statement s_display_tokens_catering = con.createStatement();
		        			
		        			String getQuery_id =  request.getParameter("id");
		        			
		        		
		        			url_id_check = Integer.parseInt(request.getParameter("id"));
		  
		        			ResultSet rs_display_tokens_catering = preViewToken.Sql_display_tokens_catering();
		        			while(rs_display_tokens_catering.next()){
					 
					 
					 
					 
					%>
					
					
					                      
 <%
 	Connection conn = DBConnection.getConnection();
 
 	//Statement s_get_catering_key = conn.createStatement();
 	//String sql_get_catering_key = "SELECT DISTINCT ct.catering_id as 'unique_type_id' FROM bidservice bs,catering ct,tokens tk WHERE (bs.type_id = ct.catering_id OR ct.token_id = '"+request.getParameter("id")+"') and (bs.token_id = ct.token_id or ct.token_id = '"+request.getParameter("id")+"') AND (bs.token_id = '"+request.getParameter("id")+"' or ct.token_id = '"+request.getParameter("id")+"')";
 	//ResultSet rs_get_catering_key = s_get_catering_key.executeQuery(sql_get_catering_key);
 	
 	ResultSet rs_get_catering_key = preViewToken.Sql_get_catering_key();
 	if(rs_get_catering_key.next()){
 		
 		int cateringKey = Integer.parseInt(rs_get_catering_key.getString("unique_type_id")); 
 		
 	 	Statement s_check_bid_key = conn.createStatement();
 	 	String sql_check_bid_key = "SELECT COUNT(stk.user_id) as 'counter',bs.bid_amount FROM stakehoders stk,bidservice bs WHERE bs.type_id = '"+cateringKey+"'  AND stk.email = '"+session.getAttribute("sessionEmail")+"' AND stk.user_id = bs.purchase_id AND bs.service_type = 'Catering'";
 	 	
 	 	SQLPreViewTokenQueries sqlPreViewQueries_Session = new SQLPreViewTokenQueries(30,0,request);
 	 	//ResultSet rs_check_bid_key = preViewToken.Sql_check_bid_key_catering();
 	 	// PreViewTokenDataSet preViewTokenDateSet = new  PreViewTokenDataSet(30,0,request);
 	 	//ResultSet rs_check_bid_key = preViewToken.Sql_check_bid_key_catering();
 	 	 ResultSet rs_check_bid_key = s_check_bid_key.executeQuery(sql_check_bid_key);
 	 	
 	 	if(rs_check_bid_key.next()){
 	 		if(rs_check_bid_key.getString("counter").equals("0")){
 
 %>   
					
											

			<div class="row">
                <div class="col-sm-12">
                  <table
                    id="add-row"
                    class="display table table-striped table-hover dataTable"
                    role="grid"
                    aria-describedby="add-row_info"
                  >
                    <tbody>
                      <tr role="row">
                        <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Required Date
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                         <%= rs_display_tokens_catering.getString("req_date") %>
                        </th>
                       
                      </tr>
                      
                      
                      
                                   <tr role="row">
                        <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Vetors
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                        <%= rs_display_tokens_catering.getString("vetors") %>
                        </th>
                        
                        
                                     <tr role="row">
                        <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          No:of Plates
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                         <%= rs_display_tokens_catering.getString("plates") %>
                        </th>
                        
                       <tr role="row">
                        <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Meal Arrangment
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                         <%= rs_display_tokens_catering.getString("meal") %>
                        </th>
                       </tr>
                       
                       
                         <tr role="row"> 
                         <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Deserts
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                        <%= rs_display_tokens_catering.getString("desert") %>
                        </th>
                       
                      </tr>
                   
                
                   
                   
<form action="SetPurchaseCatering" method="POST" id="Catering">                   
                      
                       <tr role="row"> 
                         <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Catering Cost ( LKR )
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                      <input type="number" class="form-control" style="width:120px;" name="catering_cost">
                        </th>
                       
                      </tr>
                       
                       
                       
                       
                       
                                <tr role="row"> 
                         <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Actions
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                        
                          
                          	<script type="text/javascript">
								document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(50,52)+'">');							
							</script>
                          
                          
                         <input type="hidden" name="type_catering" value="Catering" ></br>
                         <input type="hidden" name="catering_type_id" value="<%= rs_display_tokens_catering.getString("catering_id") %>" >
                        
                        <button class="btn btn-success btn-sm" name="btnCatering" id="btnCatering">Accept</button> 
                                                       
                                                                            
</form>

            
    




                        
                        
                        
                        
                         <button class="btn btn-warning btn-sm">Sujjeset</button>
                         
                        </th>
                       
                      </tr>
                  
                    </tbody>
                  
                  </table>
                </div>
              </div>



              <%

              	}else{
              %>



              			<table id="add-row" class="display table table-striped table-hover dataTable" role="grid" aria-describedby="add-row_info">
						
						<thead>


							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Required Date</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;"><%= rs_display_tokens_catering.getString("req_date")%></th>
							
							</tr>


							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Customer Name</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;"><%= rs_display_tokens_catering.getString("name")%></th>
							
							</tr>



							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Charge</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">2500</th>
							
							</tr>



							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">No:of Plates</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;"><%= rs_display_tokens_catering.getString("plates")%></th>
							
							</tr>


						</thead>
						<tbody> 

						  
					</table>


					<center>
					
						<form method="POST" action="SetCateringVisibility">
						
							<script type="text/javascript">
								document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(50,52)+'">');							
							</script>
                          
							<button  class="btn btn-warning btn-lg">Sujest to Other Providers</button>
							
						</form>
						
					</center>












              <%
              	}
              }

              %>

										
							  
							  
							  
					<%
			 	 	 	}
			 	 	 
			 	 	 	}
 	
		        			
					 }catch(Exception e){
						 e.printStackTrace();
					 }
					%>		  
							  
								
								<div class="clearfix"> </div>



						</div>
					</div>
				</div>
			</div>
	</div>

							
									</section>
									
									
								</div>
								
								
<!--Cordinating  ----------------------------Cordinating-----------------------------------Cordinating------------------------Cordinating--------------->
								
							

			<div>			
		<section class="w3_g_address">
								

			<div class="container">		
					<div class="col-md-9 profiles-list-agileits">
						<div class="resp-tabs-container hor_1">
							<div>	
							<div class="w3_regular_search">
							
							
									

									<%
					 //Connection connection = null;
			
					 
					 				 
					 try{
						 
							
		          			//Connection con = DBConnection.getConnection();
		          			
		        			Statement s_display_tokens_wedding = con.createStatement();
		        			
		        			String getQuery_id =  request.getParameter("id");
		        			
		        			//String sql_display_tokens_wedding = "SELECT * FROM wedding wd,stakehoders stk WHERE token_id = '"+getQuery_id+"' AND stk.user_id = wd.stakeholder_id";
		        			//ResultSet rs_display_tokens_wedding = s_display_tokens_wedding.executeQuery(sql_display_tokens_wedding);
		        			
		        			url_id_check = Integer.parseInt(request.getParameter("id"));
		        			  
		        			ResultSet rs_display_tokens_wedding = preViewToken.Sql_display_tokens_wedding();
		        			while(rs_display_tokens_wedding.next()){
					 
					 
					 
					 
					%>	
					
 <%
 	Connection conn = DBConnection.getConnection();
 
 	//Statement s_get_wedding_key = conn.createStatement();
 	//String sql_get_wedding_key = "SELECT DISTINCT wd.wedding_id as 'unique_type_id_wedding' FROM bidservice bs,wedding wd,tokens tk WHERE (bs.type_id = wd.wedding_id OR wd.token_id = '"+request.getParameter("id")+"') and (bs.token_id = wd.token_id or wd.token_id = '"+request.getParameter("id")+"') AND (bs.token_id = '"+request.getParameter("id")+"' or wd.token_id = '"+request.getParameter("id")+"')";
 	//ResultSet rs_get_wedding_key = s_get_wedding_key.executeQuery(sql_get_wedding_key);

 	ResultSet rs_get_wedding_key = preViewToken.Sql_get_wedding_key();
 	
 	if(rs_get_wedding_key.next()){
 		
 	 	Statement s_check_bid_key_wedding = conn.createStatement();
 	 	String sql_check_bid_key_wedding = "SELECT COUNT(stk.user_id) as 'counter' FROM stakehoders stk,bidservice bs WHERE bs.type_id = '"+rs_get_wedding_key.getString("unique_type_id_wedding")+"'  AND stk.email = '"+session.getAttribute("sessionEmail")+"' AND stk.user_id = bs.purchase_id AND bs.service_type = 'Wedding'";
 	 	ResultSet rs_check_bid_key_wedding = s_check_bid_key_wedding.executeQuery(sql_check_bid_key_wedding);
 	 	
 	 	if(rs_check_bid_key_wedding.next()){
 	 		if(rs_check_bid_key_wedding.getString("counter").equals("0")){
 
 %> 					
					
					
					
					
					
										

				 <div class="row">
                <div class="col-sm-12">
                  <table
                    id="add-row"
                    class="display table table-striped table-hover dataTable"
                    role="grid"
                    aria-describedby="add-row_info"
                  >
                    <tbody>
                      <tr role="row">
                        <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Required Date
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                         <%= rs_display_tokens_wedding.getString("req_date") %>
                        </th>
                       
                      </tr>
                      
                      
                      
                                   <tr role="row">
                        <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Meal Type
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                       	<%= rs_display_tokens_wedding.getString("meal_type") %>
                        </th>
                        
                        
                                     <tr role="row">
                        <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Costume Type
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                      	<%= rs_display_tokens_wedding.getString("costume_type") %>
                        </th>
                        
                       <tr role="row">
                        <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                         Theme Type
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                        <%= rs_display_tokens_wedding.getString("theme_type") %>	
                        </th>
                       </tr>
                       
                       
                         <tr role="row"> 
                         <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Vehicle Type
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                      		<%= rs_display_tokens_wedding.getString("vehicle_type") %>
                        </th>
                       
                      </tr>
                      
                     
                      
                      
 
                         
<form action="SetPuchaseWedding" method="POST" id="wedding">   
 
                      
                       <tr role="row"> 
                         <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Wedding Cost ( LKR )
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                      <input type="number" class="form-control" style="width:120px;" name="wedding_cost">
                        </th>
                       
                      </tr>
                       
                       
                       
                       
                       
                                <tr role="row"> 
                         <th
                          class="sorting_asc"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-sort="ascending"
                          aria-label="Name: activate to sort column descending"
                          style="width: 366px;"
                        >
                          Actions
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Position: activate to sort column ascending"
                          style="width: 226px;"
                        >
                        
                        

                         <input type="hidden" name="wedding_type_id" value="<%= rs_display_tokens_wedding.getString("wedding_id")  %>" >
                         
                         <script type="text/javascript">
							document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(50,52)+'">');							
						</script>
                        
                        
                        <button name="btnWedding" id="btnWedding" class="btn btn-success btn-sm" > 
                         	Accept
                        </button>
                        
</form>   

                    
                        
                   <form action="SetVisibilityWedding" method="POST">     
                        <script type="text/javascript">
								document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(50,52)+'">');							
						</script>
                        
                        
                         <button
                             
                              data-toggle="tooltip"
                              title=""
                              class="btn btn-warning btn-sm"
                            
                              data-original-title="Edit Task"
                              style="margin-top:5px;"
                         >
                         
               
                          Sujjeset to Other Providers
                         </button>
                   </form>       
                         
                         
                         
                   
                         
                        </th>
                       
                      </tr>
                  
                    </tbody>
                  
                  </table>
                </div>
              </div>


										
							  
				<%




		        		}else{
		        			
		        		



		        %>			

 							

		  				 <table id="add-row" class="display table table-striped table-hover dataTable" role="grid" aria-describedby="add-row_info">
						
						<thead>


							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Required Date</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;"><%= rs_display_tokens_wedding.getString("req_date")%></th>
							
							</tr>


							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Customer Name</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;"><%= rs_display_tokens_wedding.getString("name")%></th>
							
							</tr>



							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Charge</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">2500</th>
							
							</tr>



							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Meal Type</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;"><%= rs_display_tokens_wedding.getString("meal_type")%></th>
							
							</tr>


						</thead>
						<tbody> 

						  
					</table>


					<center>
					
						<form action="SetVisibilityWedding" method="POST">
							<script type="text/javascript">
								document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(50,52)+'">');							
							</script>
							<button  class="btn btn-warning btn-lg">Sujest to Other Providers</button>
						</form>
						
					</center>





		        <%


		        	}


 						}

				%>			  
					  
				

		














			 	 	<%

			 	
		        		}


		        		}	
					 }catch(Exception e){
						 e.printStackTrace();
					 }

				%>

					
  
								
								


						

										</div>
						</div>
					</div>
				</div>
			</div>
	</section>																		
</div>
								
								
								
								
								
								
								<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  8902 Nulla Pariatur, Ipsum, D05 87GR.</li>
											<li><span>Phone</span>: 548 542 121 0000</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div>
								<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  5801 8th cross road, Ipsum, D015 Lorem.</li>
											<li><span>Phone</span>: 088 555 1545 25</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div><div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  8901 Nulla Pariatur, Ipsum, D05 87GR.</li>
											<li><span>Phone</span>: 548 542 121 0000</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div>
								<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  5801 8th cross road, Ipsum, D015 Lorem.</li>
											<li><span>Phone</span>: 088 555 1545 25</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div><div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  8901 Nulla Pariatur, Ipsum, D05 87GR.</li>
											<li><span>Phone</span>: 548 542 121 0000</li>
											<li><span>Customercare</span>: <a href="#">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div>
								<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  5801 8th cross road, Ipsum, D015 Lorem.</li>
											<li><span>Phone</span>: 088 555 1545 25</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div><div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  8901 Nulla Pariatur, Ipsum, D05 87GR.</li>
											<li><span>Phone</span>: 548 542 121 0000</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div>
								<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  5801 8th cross road, Ipsum, D015 Lorem.</li>
											<li><span>Phone</span>: 088 555 1545 25</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div><div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  8901 Nulla Pariatur, Ipsum, D05 87GR.</li>
											<li><span>Phone</span>: 548 542 121 0000</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div>
								<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  5801 8th cross road, Ipsum, D015 Lorem.</li>
											<li><span>Phone</span>: 088 555 1545 25</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div>
									<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  5801 8th cross road, Ipsum, D015 Lorem.</li>
											<li><span>Phone</span>: 088 555 1545 25</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
			$(document).ready(function () {
			
				$('#ChildVerticalTab_1').easyResponsiveTabs({
					type: 'vertical',
					width: 'auto',
					fit: true,
					tabidentify: 'ver_1', // The tab groups identifier
					activetab_bg: '#fff', // background color for active tabs in this group
					inactive_bg: '#F5F5F5', // background color for inactive tabs in this group
					active_border_color: '#c1c1c1', // border color for active tabs heads in this group
					active_content_border_color: '#5AB1D0' // border color for active tabs contect in this group so that it matches the tab head border
				});
		 
			});
		</script>
		</div>
	</div>














		<jsp:include page="WEB-INF/views/footerContact.jsp"></jsp:include>

</body>
</html>