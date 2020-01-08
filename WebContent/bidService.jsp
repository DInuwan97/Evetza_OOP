<%@page import="com.oop.util.PreViewTokenDataSet"%>
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
<%@page import="com.oop.util.PreViewTokenDataSet"%>
<%@page import="com.oop.util.BidServiceDataSet"%>

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
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <span>Purchased Services</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->

	<!-- contact section -->
	<div class="w3ls_contact_section">
		<div class="container">
	
			<div class="w3_locations">
				<h2>Purchased Services</h2>
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
				//String url_id_check = null;
			 	//ResultSet resultSet1 = null;
				
		          			try {
		          				
		          			
		          			Connection con = DBConnection.getConnection();
		          			
		        			s_token_id = con.createStatement();
		        			
		        			int url_id_check =Integer.parseInt(request.getParameter("id"));
		        			
		        			//String sql_token_id = "SELECT COUNT(token_id) as 'counter' FROM catering WHERE token_id = '"+request.getParameter("id")+"'";
		        			//rs_get_token_id = s_token_id.executeQuery(sql_token_id);
		        			
		        			PreViewTokenDataSet prviewTik = new PreViewTokenDataSet(url_id_check);
		        			ResultSet rs_get_token_id_catering = prviewTik.checkTokenCountCatering();
		        			
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
								
								//String sql_token_id_wedding = "SELECT COUNT(token_id) as 'counter' FROM wedding WHERE token_id = '"+request.getParameter("id")+"'";
			        			//ResultSet rs_get_token_id_wedding = s_token_id.executeQuery(sql_token_id_wedding);
			        			
			        			int url_id_check =Integer.parseInt(request.getParameter("id"));
			        			PreViewTokenDataSet prviewTik = new PreViewTokenDataSet(url_id_check);
			        			ResultSet rs_get_token_id_wedding = prviewTik.checkTokenCountWedding();
			        			
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

   
								
								<script type="text/javascript">
									document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(48,50)+'">');							
								</script>
								
								
								
								
								
								
								
								
								
								
								
								
								
								
					
					
					<%
					 //Connection connection = null;
			
					 
					 				 
					 try{
						 
							
		          			Connection con = DBConnection.getConnection();
		          			
		        			String getQuery_id =  request.getParameter("id");
		        		
		        			Statement s_catering_token_details = con.createStatement(); 		        			
		        			//String sql_catering_token_details = "SELECT * from catering WHERE token_id = '"+request.getParameter("id")+"'";
		        			//ResultSet rs_catering_token_details = s_catering_token_details.executeQuery(sql_catering_token_details);
		        			
		        			
		        			
		        			BidServiceDataSet bidServiceEventDetails = new BidServiceDataSet(url_id_check);
		        			ResultSet rs_catering_token_details = bidServiceEventDetails.Sql_catering_token_details();
		        					
		        			
		        			
		        			if(rs_catering_token_details.next()){
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
                         <%= rs_catering_token_details.getString("req_date") %>
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
                        <%= rs_catering_token_details.getString("plates") %>
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
                         <%= rs_catering_token_details.getString("desert") %>
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
                         <%= rs_catering_token_details.getString("vetors") %>
                        </th>
                       </tr>
                       

                  
                    </tbody>
                  
                  </table>
                </div>
              </div>
		        				
		        	
		        	
		        	
		        	
		        	
		        	
		        	
		        	
		        	<%
		        			}//end of finding token details
		        	%>
		        	
		        	
		        	
						<table id="add-row" class="display table table-striped table-hover dataTable" role="grid" aria-describedby="add-row_info">
						
						<thead>
							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Name</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Amount</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Actions</th>
							</tr>
						</thead>
						<tbody>
		        	
		        	
		        	
		        	
		        	
		        	<% 			
		        				
		        				
		              			int cateringId = Integer.parseInt(rs_catering_token_details.getString("catering_id"));
		        	
			        			Statement s_display_catering_ongoing_bid = con.createStatement();
			        			//String sql_display_catering_ongoing_bid = "SELECT * FROM bidservice bs,stakehoders stk WHERE bs.token_id = '"+request.getParameter("id")+"' AND bs.type_id = '"+rs_catering_token_details.getString("catering_id")+"' AND bs.purchase_id = stk.user_id AND bs.service_type='Catering'";		        			
			        		//	ResultSet rs_display_catering_ongoing_bid = s_token_id.executeQuery(sql_display_catering_ongoing_bid);
		        			
			        			BidServiceDataSet bidService_Catering = new BidServiceDataSet(url_id_check,cateringId,0);
			        			ResultSet rs_display_catering_ongoing_bid = bidService_Catering.Sql_display_catering_ongoing_bid();
			        			
		        				while(rs_display_catering_ongoing_bid.next()){
					 
					 
					 
					 
					%>						
			
						<tr role="row" class="odd">
							<td style="font-weight:bold" class="sorting_1"><%= rs_display_catering_ongoing_bid.getString("name") %></td>
							<td style="font-weight:bold" class="sorting_1"> LKR <%= rs_display_catering_ongoing_bid.getString("bid_amount") %></td>
							<td>
							

							<span class="badge badge-primary"><a href="payment.jsp?id=<%= rs_display_catering_ongoing_bid.getString("bid_id") %>">
							Confirm</a></span>
					
					
													
							
							</td>
						</tr>
										
						  
							  
					<%
		        			}
		        			
					 }catch(Exception e){
						 e.printStackTrace();
					 }
					%>		  
							
					</tbody>		  
					</table>		  
								
								<div class="clearfix"> </div>




						</div>
					</div>
				</div>
			</div>


									</section>
									
									
								</div>
								
								
<!--Cordinating  ----------------------------Cordinating-----------------------------------Cordinating------------------------Cordinating--------------->
								
							

			<div>
				<section class="w3_g_address">							
						<div>	
							<div class="w3_regular_search">


								
									<script type="text/javascript">
								document.write('<input type="hidden" name="url" id="url" value="'+window.location.href.substring(48,50)+'">');							
								</script>
									

			<%
					 //Connection connection = null;
			
					 
					 				 
					 try{
						 
							
		          			Connection con = DBConnection.getConnection();
		          			
		        			String getQuery_id =  request.getParameter("id");
		        		
		        			Statement s_wedding_token_details = con.createStatement(); 		        			
		        			/*String sql_wedding_token_details = "SELECT * from wedding WHERE token_id = '"+request.getParameter("id")+"'";
		        			ResultSet rs_wedding_token_details = s_wedding_token_details.executeQuery(sql_wedding_token_details);*/
		        			
	//							//int url_id_check =Integer.parseInt(request.getParameter("id"));
		        			
		        			//String sql_token_id = "SELECT COUNT(token_id) as 'counter' FROM catering WHERE token_id = '"+request.getParameter("id")+"'";
		        			//rs_get_token_id = s_token_id.executeQuery(sql_token_id);
		        			
		        			//PreViewTokenDataSet prviewTik = new PreViewTokenDataSet(url_id_check);
		        			//ResultSet rs_wedding_token_details = prviewTik.checkTokenCountWedding();
		        			
		        						
		        			BidServiceDataSet bidServiceEventDetails = new BidServiceDataSet(url_id_check);
		        			ResultSet rs_wedding_token_details = bidServiceEventDetails.Sql_wedding_token_details();
			
		        			if(rs_wedding_token_details.next()){
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
                         <%= rs_wedding_token_details.getString("req_date") %>
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
                       	<%= rs_wedding_token_details.getString("meal_type") %>
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
                      	<%= rs_wedding_token_details.getString("costume_type") %>
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
                        <%= rs_wedding_token_details.getString("theme_type") %>	
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
                      		<%= rs_wedding_token_details.getString("vehicle_type") %>
                        </th>
                       
                      </tr>
                      
                      
                      
                       
                       
                        
                        
                        
                        
                        
                        
                        
                        
         
                         
                        </th>
                       
                      </tr>
                  
                    </tbody>
                  
                  </table>
                </div>
              </div>

              <%
              	}

              %>





						<table id="add-row" class="display table table-striped table-hover dataTable" role="grid" aria-describedby="add-row_info">
						
						<thead>
							<tr role="row" >
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Name</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Amount</th>
								<th class="sorting_asc" tabindex="0" aria-controls="add-row" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 366px;">Actions</th>
							</tr>
						</thead>
						<tbody>
		        	
		        	
		        	
		        	
		        	
		        	<% 			
 				
		              			
			        			Statement s_display_wedding_ongoing_bid = con.createStatement();
			        			String sql_display_wedding_ongoing_bid = "SELECT * FROM bidservice bs,stakehoders stk WHERE bs.token_id = '"+request.getParameter("id")+"' AND bs.type_id = '"+rs_wedding_token_details.getString("wedding_id")+"' AND bs.purchase_id = stk.user_id AND bs.service_type='Wedding'";		        			
			        			ResultSet rs_display_wedding_ongoing_bid = s_token_id.executeQuery(sql_display_wedding_ongoing_bid);
		        			
		        			
		        			int weddingId = Integer.parseInt(rs_wedding_token_details.getString("wedding_id"));
			        			
			        			//BidServiceDataSet bidService_wedding = new BidServiceDataSet(url_id_check,0,weddingId);
			        			//ResultSet rs_display_wedding_ongoing_bid = bidService_wedding.Sql_display_catering_ongoing_bid();
			        			
		        				//while(rs_display_catering_ongoing_bid.next()){
			        			
			        			
		        				while(rs_display_wedding_ongoing_bid.next()){
			 
					%>						
			

						<tr role="row" class="odd">
							<td style="font-weight:bold" class="sorting_1"><%= rs_display_wedding_ongoing_bid.getString("name") %></td>
							<td style="font-weight:bold" class="sorting_1"> LKR <%= rs_display_wedding_ongoing_bid.getString("bid_amount") %></td>
							<td>
							

							<span class="badge badge-primary"><a href="payment.jsp?id=<%= rs_display_wedding_ongoing_bid.getString("bid_id") %>" >Confirm</a></span>
						
							
		
						
													
							
							</td>
						</tr>


					<%
						}

					%>
			  
					<%
		        			
					 }catch(Exception e){
						 e.printStackTrace();
					 }
					%>	
											</tbody>		  
					</table>		  
								
								





</div>	</div>	
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