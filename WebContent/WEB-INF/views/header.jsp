<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<!-- html -->
<html>
<!-- head -->
<head>
<title>Match a Matrimonial Category Bootstrap Responsive Web Template | index :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- bootstrap-CSS -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /><!-- Fontawesome-CSS -->
<link rel="stylesheet" type="text/css" href="css/admin-easy-responsive-tabs.css " />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<!-- Custom Theme files -->
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style --> 
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->

<!--meta data-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Match Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//meta data-->
<!-- online fonts -->
<link href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- /online fonts -->
<!-- nav smooth scroll -->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>	
<!-- //nav smooth scroll -->			
<!-- Calendar -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.js"></script>
	
	<script src="js/provider_selection.js"></script>
	
	
		<script>
		  $(function() {
			$( "#datepicker" ).datepicker();
		 });
		</script>
<!-- //Calendar -->			
<link rel="stylesheet" href="css/intlTelInput.css">

















</head>
<!-- //head -->









<!-- body -->
<body>

<%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet resultSet1 = null;
%>

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
<%@page import="com.oop.util.SessionDetails"%>

<!-- header -->
<header>
	<!--  Navigation Start -->
 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner">
        <div class="container">
        
						
						
			 <%
			
				
		          			try {
		          				
		          			
		          			Connection con = DBConnection.getConnection();
		          			
		        	
		        			
		        			SessionDetails sessionDetails = new SessionDetails(request);
		        			ResultSet rs_stakeholder_details = sessionDetails.Sql_pass_sessionTo_header();
		        			//resultSet = s.executeQuery(sql);
		        			
		        			if(rs_stakeholder_details.next()){
		     %>
		        		
		        	
		      <%
		      if(rs_stakeholder_details.getString("street").equals("0")){	
		      %>  	
						        	
				<script>
				$(window).on('load',function(){
				  $('#myModal').modal('show');
				});
				</script>
				
				
				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog">
				    <div class="modal-dialog">
				
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <h4 class="modal-title"><i class="fa fa-exclamation-circle"></i>&nbsp;Fill Your Address</h4>
				        </div>
				        
				     
				        
				        <div class="modal-body">
				        
				   
				    <form action="SetUserAddress" method="post">  
				   
				        				<input type="text" required="" name="address_num" placeholder="Location Number" class="form-control" style="margin-top:15px; height:45px;">
				        		
				        				<input type="text" required="" name="street" placeholder="Located Street" class="form-control" style="margin-top:15px; height:45px;">        			
				        	
				        
				        				<input type="text" required="" name="city" placeholder="Located City" class="form-control" style="margin-top:15px; height:45px;">
				        		
				        				<input type="text"  required="" name="postal_code" placeholder="Postal Code" class="form-control" style="margin-top:15px; height:45px;">			        
				        	
				       				 				        				        					        							        
				        </div>
				        
				        
				        <div class="modal-footer">
				          <input type="submit" name="btnupdate" value="Update Address" class="btn btn-success" >
				        </div>
				        
				    </form>  
				     
				    			        
				      </div>
				
				    </div>
				</div>
		        	
		        	<%
		        	}	        	
		        	%>
		        	
		        	
		        	
		        			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">Logout</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      <div class="modal-body">
								        Do You want to Logout?
								      </div>
								      <div class="modal-footer">
								      
								            <form action="SetLoginDetails">
								       			 <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>								      								  
								        		 <button  class="btn btn-primary">Yes</button>
								        </form>
								        
								      </div>
								    </div>
								  </div>
								</div>
		        	
		        	
		        	
		        	
		        	 <div class="menu">
					<div class="cd-dropdown-wrapper">
						<a class="cd-dropdown-trigger"  href="#0"><i class="fas fa-user-tag fa-1x"></i> <%=rs_stakeholder_details.getString("name") %></a>
						<nav class="cd-dropdown"> 
							<a href="#0" class="cd-close">Close</a>
							<ul class="cd-dropdown-content"> 
								<li><a href="#" data-toggle="modal" data-target="#updateDetails">Update Profile</a></li>
								
								
				<%
			
					if(rs_stakeholder_details.getString("type").equals("Admin")){
				%>				
				
								<li><a href="admin.jsp">Admin Control Pannel</a></li>
								
								
				<%
					}else if(rs_stakeholder_details.getString("type").equals("Customer")){
				
				%>
						<li><a href="customer_pannel.jsp">Customer Control Pannel</a></li>
				<%
		        	}else if(rs_stakeholder_details.getString("type").equals("Provider")){
		        				        	
				%>
						<li><a href="provider_pannel.jsp">Provider Control Pannel</a></li>
				
				<%
		        	}
				%>
					<li><a href="#" data-toggle="modal" data-target="#logoutModal">Logout</a></li>
								
								
								
								
						 
							</ul> <!-- .cd-dropdown-content -->
						</nav> <!-- .cd-dropdown -->
					</div> <!-- .cd-dropdown-wrapper -->	 
			</div>
						
		        
		        <% 		
		        			  
		        		}
		        			  else
		        		{
		        %>
		        
		        			        	 <div class="menu">
					<div class="cd-dropdown-wrapper">
						<a class="cd-dropdown-trigger" href="#0">WELCOME TO EVENTZA</a>
			
					</div> <!-- .cd-dropdown-wrapper -->	 
			</div>
		        
		        			
		        	<% 	
		        		}
		        		} catch (Exception e) {
		        			System.out.println("Error occured");
		        			e.printStackTrace();
		        		}
                  %>
				
				
						<!-- Modal -->
				<div id="updateDetails" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
				  <div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>		
						<h4 class="modal-title">Update Profile</h4>
					  </div>
					  <div class="modal-body">
						<div class="login-w3ls">
						
							<form id="signin" action="SetUpdateUser" method="post" >

		<%
						SessionDetails UserDetails = new SessionDetails(request);
						ResultSet rs_user_details = UserDetails.Sql_pass_sessionTo_header();
						if(rs_user_details.next()){
		%>
							


								 <input type="text" name="name" placeholder="<%=rs_user_details.getString("name") %>" required="" value="<%=rs_user_details.getString("name") %>">
                                </br></br>
		
                                <input type="text" name="email" placeholder="<%=rs_user_details.getString("email") %>" required="" value="<%=rs_user_details.getString("email") %>">
                                </br></br>
                                
                                <input type="text" name="mobile" placeholder="<%=rs_user_details.getString("mobile") %>" required="" value="<%=rs_user_details.getString("mobile") %>">
                                </br></br>
                                
                                  <input type="hidden" name="hidden_user_id" placeholder="<%=rs_user_details.getString("user_id") %>" required="" value="<%=rs_user_details.getString("user_id") %>">
                             
                                
         <%
						}
         %>

                                <input type="password" name="password" placeholder="Password" required="">	
                                </br></br>
                               <input type="password" name="confirm_password" placeholder="Confirm Password" required="">	

                  
                                
							
								</br></br>
								
								
								<div class="clearfix"> </div>
								<input type="submit" name="submit" value="Update Profile" >
								<div class="clearfix"> </div>
								<div class="social-icons">
						
									<div class="clearfix"> </div>
								</div>	
								
								
							</form>
							
							
							
						</div>
					  </div>
					</div>
				  </div>
				</div>
				<!-- //Modal -->
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			
					
						
									
			
           <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header nav_2">
		      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		        <ul class="nav navbar-nav nav_1">
		            <li class="active"><a href="index.jsp">Home</a></li>
		            <li><a href="#">About</a></li>
		            <li><a href="#">Search</a></li>
		            <li><a href="#">Mobile</a></li>
					  <!--<li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="search.html">Regular Search</a></li>
		                <li><a href="profile.html">Recently Viewed Profiles</a></li>
		                <li><a href="search-id.html">Search By Profile ID</a></li>
		                <li><a href="faq.html">Faq</a></li>
		                <li><a href="shortcodes.html">Shortcodes</a></li>
		              </ul>
		            </li>-->
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Quick Search<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <div class="banner-bottom-login">
		<div class="w3agile_banner_btom_login">
			<form action="#" method="post">
				<div class="w3agile__text w3agile_banner_btom_login_left">
					
				</div>
	
				<div class="w3agile__text w3agile_banner_btom_login_left2">
					<h4>Favorites Events</h4>
					<select id="country3" onchange="change_country(this.value)" class="frm-field required">
						<option value="null">Catering</option>  
						<option value="null">Wedding Planning</option>   
						<option value="null">Special Conferences</option>   
						<option value="null">Birthdays</option>   
						<option value="null">Mini Parties</option>   
			  					
					</select>
				</div>
				<div class="w3agile_banner_btom_login_left3">
					<input type="submit" value="Search" />
				</div>
				<div class="clearfix"> </div>
			</form>
		</div>
	</div>
		              </ul>
		            </li>
		            <li class="last"><a href="#">Connect</a></li>
		            
		            <% 
		      	            
		        	try {
		        		      	                   				
	          			//Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/guider_hub","root","");
	          			/*Connection con = DBConnection.getConnection();
	        			Statement s_type = con.createStatement();
	        			String sql_type = "SELECT user_id,type FROM stakehoders where email = '"+session.getAttribute("sessionEmail")+"'";
	        			ResultSet resultSet_type = s_type.executeQuery(sql_type);
	        			*/
	        			
	        			//if(resultSet_type.next()){
	        				
	        				        			
		        			SessionDetails sessionDetails = new SessionDetails(request);
		        			ResultSet rs_stakeholder_type = sessionDetails.Sql_pass_sessionTo_header();
		            		
		        			
		            		if(rs_stakeholder_type.next() && (rs_stakeholder_type.getString("type").equals("Provider") || rs_stakeholder_type.getString("type").equals("Customer") || rs_stakeholder_type.getString("type").equals("Admin")))
		            		{	
		            					            					            					            					            					            					            					          		            			
		            %>
		            
		            
		             <li class="last"><a href="contact.html" data-toggle="modal" data-target="#qwe">Post Add</a></li>
		             
		             
		             <!-- Button trigger modal -->

							<!-- Modal -->
							<div class="modal fade" id="qwe" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							  <div class="modal-dialog modal-dialog-centered" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLongTitle">Token Title</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      
							   <form action="SetTokenTitle" method="post">
							   
							      <div class="modal-body">		
							      
							      <div class="form-group">
							
								    <select style="height:40px;" class="form-control"  name="token_title" id="exampleFormControlSelect1">
							                    <option value="">Select Your Event Type</option> 
			                                    <option value="Wedding Ceromony">Wedding Ceromony</option>                
			                                    <option value="Birthday Celabration">Birthday Celebration</option>
			                                    <option value="MiniParty">Mini Party</option>  
			                                    <option value="Special Conferences">Special Conferences</option> 
			                                    <option value="Global Meetups">Global Meetups</option>
			                                    <option value="Techno Meetup">Techno Meetup</option>  
			                     
								    </select>
								  </div>
							      
							      				       																		
								  	 							       							     							       
							      </div>
							      
							      <div class="modal-footer">
							      
							       
							        <input type="submit" class="btn btn-primary" name="btnsubmitaddress" value="Add Token">
							        
							   </form>
							   
							    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							    
							      </div>
							    </div>
							  </div>
							</div>
		             
		             
		             	             
		            <%
		            		}
		        			
	        			
		        	} catch (Exception e) {
	        			
	        			e.printStackTrace();
	        		}
		            %>
		            		
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
<!-- ============================  Navigation End ============================ -->
</header>







<!-- /header -->







					
								







<!-- Find your soulmate -->
	
	<!-- //Find your soulmate -->
		
		<!-- featured profiles -->			
			
			<!-- //featured profiles -->		   
					   
		<!-- mobile-app -->
			
			<!-- /mobile-app -->
	
	<!-- browse profiles -->
	
</body>
<!-- //body -->
</html>
<!-- //html -->
