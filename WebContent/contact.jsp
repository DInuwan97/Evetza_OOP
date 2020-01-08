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
		 <!-- <%=  request.getParameter("id")  %>  -->
		 
		
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
<%@page import="com.oop.util.ContactPageDataSet"%>
<%@page import="com.oop.util.SQLContactPageQueries"%>


				<script type="text/javascript">
				
								function getCurrentURL() {
									var url = window.location.href
									//document.write(url)
									return url;
								}
							
				</script>
				
				
				<%
				/*	int tokenId = Integer.parseInt(request.getParameter("id"));
				
					////HttpSession session_Validate = request.getSession(); //CREATING A SESSION OBJECT
					//session.setAttribute("sessionEmail",email);
					
					ContactPageDataSet sqlContactRestrictions = new ContactPageDataSet(tokenId);
					ResultSet rs_contact_page_resrtictions = sqlContactRestrictions.Sql_contact_page_restrictions();
					
					if( rs_contact_page_resrtictions.next()){
					
					if(rs_contact_page_resrtictions.getString("email") != session.getAttribute("sessionEmail")){
						
						if((rs_contact_page_resrtictions.getString("type").equals("Admin"))
								response.sendRedirect("admin.jsp");
						

						else if((rs_contact_page_resrtictions.getString("type").equals("Provider"))
								response.sendRedirect("provider_pannel.jsp");
						

						else if((rs_contact_page_resrtictions.getString("type").equals("Customer"))
								response.sendRedirect("customer_pannel.jsp");
						
						
						}
					}*/
				%>
					
				
				
				




			<div class="w3layouts-inner-banner">
		<div class="container">
			<div class="logo">
				<h1><a class="cd-logo link link--takiri" href="index.html"> Life's a Party <span><i class="fa fa-heart" aria-hidden="true"></i>Make it Happen</span></a></h1>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //inner banner -->	
	
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <span>Contact Us</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->

	<!-- contact section -->
	<div class="w3ls_contact_section">
		<div class="container">
			
			<div class="w3_locations">
				<h2>Our Services</h2>
				<div class="resp-tabs-container hor_1">
					<div>
							<!--vertical Tabs-->
							
							<script type="text/javascript">
							<%
								String token_id = null;
							%>
								var url_check_id = window.location.href.substring(45, 47);
								
								console.log(token_url_id);
								
							</script>

						<div id="ChildVerticalTab_1">
							<ul class="resp-tabs-list ver_1">
							
							
								
								<li>Catering	
							
			<%
			 	Connection connection = null;
			 	Statement s_token_id = null;
			  	//ResultSet rs_get_token_id_catering = null;
				int url_id_check = 0;
			 	//ResultSet resultSet1 = null;
				
		          			try {
		          				
		          			
		          		Connection con = DBConnection.getConnection();
		          			
		        		s_token_id = con.createStatement();
		        			
		        		url_id_check = Integer.parseInt(request.getParameter("id"));
		        		
		        		//SQLContactPageQueries sqlContact_Queries = new SQLContactPageQueries(url_id_check);
		        		
		        		
		        		//String sql_token_id = "SELECT COUNT(token_id) as 'counter' FROM catering WHERE token_id = '"+url_id_check+"'";
		        		//ResultSet rs_get_token_id_catering = s_token_id.executeQuery(sql_token_id);
		        		
		        		
		        		ContactPageDataSet contactData = new ContactPageDataSet(url_id_check);
		        		ResultSet rs_get_token_id_catering = contactData.checkTokenCountCatering();
		        		
		        		if(rs_get_token_id_catering.next()){		        				
		        			if(rs_get_token_id_catering.getString("counter").equals("1")){
		        				
		        			
		     %>
																					
									<i style="color:green; float:right;" class="fas fa-check fa-2x"></i>
								
			<%
		        			}
		        		}
		          			}catch(Exception e){
		          				e.printStackTrace();
		          			}
			%>					
								
								</li>
								



								<li>Cordinating Plan	

			 <%
					 	//Connection connection = null;
					 	Statement s_token_id_wedding = null;
					  	//ResultSet rs_get_token_id_wedding = null;
						//String url_id_check = null;
			 	
				
		          		try {
		          				
		          			
		          		Connection con = DBConnection.getConnection();
		          			
		        		s_token_id_wedding = con.createStatement();
		        			
		        		url_id_check = Integer.parseInt(request.getParameter("id"));	  
		        			
		 		        			
		        		//String sql_token_id_wedding = "SELECT COUNT(token_id) as 'counter' FROM wedding WHERE token_id = '"+url_id_check+"'";
		        		//rs_get_token_id_wedding = s_token_id.executeQuery(sql_token_id_wedding);
		        		
		        		ContactPageDataSet contactData = new ContactPageDataSet(url_id_check);
		        		ResultSet rs_get_token_id_wedding = contactData.checkTokenCountWedding();
		        					        			
		        		if(rs_get_token_id_wedding.next()){		        				
		        		if(rs_get_token_id_wedding.getString("counter").equals("1")){
		        				
		        			
		     %>
							<i style="color:green; float:right;" class="fas fa-check fa-2x"></i>

			<%
		        		}

		        	}
		          			
		          			}catch(Exception e){
		          				e.printStackTrace();
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
			Connection con = DBConnection.getConnection();
			//Statement s_check_catering = con.createStatement();
			//String sql_check_catering = "SELECT COUNT(token_id) as 'catering_counter' FROM catering where token_id = '"+request.getParameter("id")+"'";
			//ResultSet rs_check_catering = s_check_catering.executeQuery(sql_check_catering);
			

    		ContactPageDataSet contactData = new ContactPageDataSet(url_id_check);
    		ResultSet rs_check_catering = contactData.checkTokenCountCatering();
			
			if(rs_check_catering.next()){
			if(rs_check_catering.getString("counter").equals("0")){

		%>

		<form action="SetCaters" method="post">	
		
								
								<script type="text/javascript">
									document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(45,47)+'">');
								</script>
								
												
								<input type="hidden" name="visibility" id=visibility" value="ToAdmin">		
								
				
										<div class="form_but1">
											<label class="col-sm-5 control-label1" for="sex">Requiered Date : </label>
											<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">
																		
															<input type="date" name="req_date">
																			
											</div>
											<div class="clearfix"></div>
										</div>	

							   <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Do You want Vetors  </label>
								<div class="col-sm-7 form_radios">
									<label class="col-sm-5 control-label1" for="need"> <input type="radio" name="vetor" id="need" value="Nedd" > Need </label>
									<label class="col-sm-5 control-label1" for="no_need"> <input type="radio" name="vetor" id="no_need" value="No Need"> No Need </label><br>
									
									<!--<hr />
									<p id="sel"></p><br />
									<input id="btnRadio" type="button" value="Get Selected Value" />-->
								</div>
								<div class="clearfix"> </div>
								</div>

							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="no_of_plates">Number of Plates  </label>
								<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">
							
							
									<input type = "number" name="no_of_plates" >
							
								</div>
								<div class="clearfix"></div>
							</div>
					
										
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Select Menus </label>
								<div class="col-sm-7 form_radios">
									<label class="col-sm-5 control-label1" for="vegitable"><input type="checkbox" class="radio_1" id="vegitable"> Vegitable</label>
											<label class="col-sm-5 control-label1" for="fish"><input type="checkbox" class="radio_1" id="fish"> Fish </label>
									<label class="col-sm-5 control-label1" for="bbq"><input type="checkbox" class="radio_1" id="bbq"> BBQ </label>  
									<label class="col-sm-5 control-label1" for="chicken-fish"><input type="checkbox" class="radio_1" id="chicken-fish"> Chicken</label>

							  </div>
							  
								<div class="clearfix"> </div>
								
								<br>
								
											  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="arrange">Meal Arrangement</label>
								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select required name="meal">
										<option value="">Select Menu Arrangement</option>	
										<option value="Set Menu">Set Menu</option>										
										<option value="Buffet">Buffet</option>
										<option value="Tablewice">Tablewice</option>  
									 
									</select>
								  </div>
								</div>
								
								<div class="clearfix"> </div>
							  </div>
								
								
								
								<div class="form_but1">
								<label class="col-sm-5 control-label1" for="deserts">Do You want Deserts  </label>
								<div class="col-sm-7 form_radios">
								
									<label class="col-sm-5 control-label1" for="desert_need"> <input type="radio" name="deserts" id="desert_need" value="Need" > Need </label>
									<label class="col-sm-5 control-label1" for="desert_no_need"> <input type="radio" name="deserts" id="desert_no_need" value="No Need"> No Need </label><br>
									

								</div>
								<div class="clearfix"> </div>
								</div>
								
								
							  </div>
							  
								
								<div class="clearfix"> </div>
				
								<input type="hidden" name="confirm_status">			
							
							  <input type="submit" value="Add Catering Plan" />
							  
							  
			</form>
	<%
			
			}else{
		
			
	%>
	
				<div class="alert alert-success" role="alert">
				  <h4 class="alert-heading">Succfully added Catering Service</h4>
				  <p>You can not add further choises or reservation for Catering Service.Because you already added a particular catering service for this token</p>
				  <hr>
				  <p class="mb-0">If you want to get another Catering Service From EVENTZA, Please add anthor token.</p>
				</div>
	
	
	<%
	
	}
	}
	%>
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
			
			Statement s_check_wedding = con.createStatement();
			//String sql_check_wedding = "SELECT COUNT(token_id) as 'wedding_counter' FROM wedding where token_id = '"+request.getParameter("id")+"'";
			//ResultSet rs_check_wedding = s_check_wedding.executeQuery(sql_check_wedding);
			
			
		     ResultSet rs_check_wedding = contactData.checkTokenCountWedding();
			
			if(rs_check_wedding.next()){
			if(rs_check_wedding.getString("counter").equals("0")){
	
		
		%>							
			
		<form action="SetWeddingPlan" method="post">
								
								<script type="text/javascript">
								document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(45,47)+'">');							
								</script>
									

													
										<div class="form_but1">
											<label class="col-sm-5 control-label1" for="sex">Required Date : </label>
											<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">							
															<input type="date" name="req_date">
																			
											</div>
											<div class="clearfix"></div>
										</div>	


							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="arrange">Time Arrangement</label>
								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select required name="meal_type">
										<option value="">Select Time Arrangement</option>	
										<option value="Full Day">Full day</option>										
										<option value="Half Day">Half Day</option>
										<option value="Eve & Night">Eve & Night</option>  
									 
									</select>
								  </div>
								</div>
								
								<div class="clearfix"> </div>
							  </div>
							  
							  
							  	<div class="form_but1">
								<label class="col-sm-5 control-label1" for="arrange">Costumes</label>
								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select required name="costume_type">
										<option value="">Select Costumes</option>	
										<option value="Green">Green</option>										
										<option value="Cream">Cream</option>
										<option value="Red">Red</option>  
									 
									</select>
								  </div>
								</div>
								
								<div class="clearfix"> </div>
							  </div>
							  
							  
							  
							  	  	<div class="form_but1">
								<label class="col-sm-5 control-label1" for="arrange">Color Thems</label>
								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select required name="theme_type">
										<option value="">Select a Color Theme</option>	
										<option value="Crystal">Crystal</option>										
										<option value="Magenta">Mageta</option>
										<option value="Light Blue">Light Blue</option>  
									 
									</select>
								  </div>
								</div>
								
								<div class="clearfix"> </div>
							  </div>
							  
							  
							  		  
							  	  	<div class="form_but1">
								<label class="col-sm-5 control-label1" for="arrange">Car Rentering</label>

								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select required name="vehicle_type">
										<option value="">Select Vehicle Type</option>	
										<option value="Supirior Luxary">Supirior Luxary</option>										
										<option value="Luxary">Luxary</option>
										<option value="Midium Luxary">Midium Luxary</option>  
										<option value="No Need">No Need</option>  
									 
									</select>
								  </div>
								</div>
								
				


		
								<div class="clearfix"> </div>
								</br>
							  <input type="submit" value="Add Cordinating Plan" />


	</form>
	
	
	<%
		}else{
			
	%>
	
			<div class="alert alert-success" role="alert">
				  <h4 class="alert-heading">Succfully added Cordinating Service</h4>
				  <p>You can not add further choises or reservation for Cordinating Service.Because you already added a particular Cordinating Service for this token</p>
				  <hr>
				  <p class="mb-0">If you want to get another Cordinating Service From EVENTZA, Please add anthor token.</p>
			</div>
	
	
	
	<%
		}
	}
	
	%>	
	
	
	
								</div>
						</div>
					</div>
				</div>
			</div>
	</section>																		
</div>
			
							
								
								
		<!-------- ---------------------Hotel Resevation-------------------------------Hotel Resevation------------   Hotel Resevation------------ -->							
								
					
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