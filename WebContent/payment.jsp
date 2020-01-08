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
<%@page import="com.oop.util.PayQuery" %>
<%@page import="com.oop.util.PayQueryData" %>
<%@page import="com.Payment.service.AddPayment" %>


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
				<h1><a class="cd-logo link link--takiri" href="index.html">Payment Portal</a></h1>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //inner banner -->	
	
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <span>Payments</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->

	<!-- contact section -->
	<div class="w3ls_contact_section">
		<div class="container">
			
			<div class="w3_locations">
				<h2>Enter Your Payment Details</h2>
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
							
							
								
								<li>Card Details	
							
							
								</li>
								
						</ul>



		<div class="resp-tabs-container ver_1">


		
								
								
<!-- PayForm---------------------------- PayForm ----------------------------------- PayForm ------------------------ PayForm--------------->
								
							

				
		<div>			
		<section class="w3_g_address">
								

			<div class="container">		
					<div class="col-md-9 profiles-list-agileits">
						<div class="resp-tabs-container hor_1">
							<div>	
							<div class="w3_regular_search">
							
 													
							

		<form action="SetPayment" method="POST">
								
								<script type="text/javascript">
								document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(45,47)+'">');							
								</script>
									

									
									
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="card_name">Name :   </label>
								<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">
							
							
									<input required="" type = "text" name="card_name" >
							
								</div>
								<div class="clearfix"></div>
							</div>
							
							
							  
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="card_no">Card Number :   </label>
								<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">
							
							
									<input required="" type = "text" name="card_no" >
							
								</div>
								<div class="clearfix"></div>
							</div>	
									
									
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="cvc">CVC 3 digit code :   </label>
								<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">
							
							
									<input required="" type = "text" name="cvc" >
							
								</div>
								<div class="clearfix"></div>
							</div>
									
								
							<div class="form_but1">
										 <label class="col-sm-5 control-label1" for="expDate"  >Expire Date : </label>
											<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">							
															
															<input required="" type="text" name="expDate">	
															
															
															
																			
											</div>
											<div class="clearfix"></div>
							</div>	
									
													
							<br>	
								
							<div class="form_but1">
											<label class="col-sm-5 control-label1" for="amount">Amount : (LKR)</label>
											<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">							
											
												
									 	
												
												<%
												
													
												
													int tok_id = Integer.parseInt(request.getParameter("id"));
												
												
													PayQueryData pqd = new PayQueryData(tok_id);
												
													ResultSet rs_payment = pqd.exeQuery();
													
													
													if(rs_payment.next()){

														AddPayment adPay = new AddPayment(tok_id);
													
												
												%>		
														
												<label class="col-sm-5 control-label1" for="Amount"><%= rs_payment.getString("bid_amount") %></label>		
												<input type="hidden" name="balance" value="<%= rs_payment.getString("bid_amount") %>">
												<input type="hidden" value="<%=request.getParameter("id") %>" name="url_id">
												<%							
													}
												%>	
															
									</div>
											<div class="clearfix"></div>
											</div>	
								

									<div class="clearfix"> </div>	
								
									<br>
								
								  <input type="submit" value="Pay Now" />

										
	

		</form>
	
								</div>
						</div>
					</div>
				</div>
			</div>
	</section>																		
</div>
			
							
							
								
		<!-------- Footer Starting ---------------------Footer Starting-------------------------------Footer Starting------------ Footer Starting------------ -->							
								
								
								
								
								
								
								
								
									
							
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