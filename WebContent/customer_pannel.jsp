<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>

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
<%@page import="com.oop.util.CustomerDataSet"%>




			 <%
			
				
		          			try {
		          				
		          			
		          			Connection con = DBConnection.getConnection();
		          			
		        			Statement s_validate = con.createStatement();
		        			String sql_validate = "SELECT * FROM stakehoders where email = '"+session.getAttribute("sessionEmail")+"'";
		        			ResultSet rs_validate = s_validate.executeQuery(sql_validate);
		        			
							if(rs_validate.next()){
		        				
		        				if(rs_validate.getString("type").equals("Admin") || rs_validate.getString("type").equals("Provider") || session.getAttribute("sessionEmail").equals("")){
		        					
		        					response.sendRedirect("index.jsp");	
		        					
		        				}
		        				
		        			}
		        			
		        			
		        			
		        			
		        			}catch(Exception e){
		        				e.printStackTrace();
		        			}
		    		 %>













	
		<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>

<script>
$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})
</script>
			
	
	<!-- inner banner -->	
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
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <span>Search</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->


	<!-- Search form -->
	<div class="w3ls-list">
		<div class="container">
		<h2>Customer Dashboard</h2>
	
		<!--Horizontal Tab-->
			<div id="parentHorizontalTab">
				<ul class="resp-tabs-list hor_1">
					<li style="width:50%">My Events</li>
					<li style="width:50%">Providers</li>
			
				</ul>
				<div class="resp-tabs-container hor_1">

				<div class="card-body">
          <div class="table-responsive">
            <div
              id="add-row_wrapper"
							class="dataTables_wrapper container-fluid dt-bootstrap4">
							
						<!----	
              <div class="row">
                <div class="col-sm-12 col-md-6">
                  <div class="dataTables_length" id="add-row_length">
                    <label
                      >Show
                      <select
                        name="add-row_length"
                        aria-controls="add-row"
                        class="form-control form-control-sm"
                        ><option value="10">10</option
                        ><option value="25">25</option
                        ><option value="50">50</option
                        ><option value="100">100</option></select
                      >
                      entries</label
                    >
                  </div>
                </div>
                <div class="col-sm-12 col-md-6">
                  <div id="add-row_filter" class="dataTables_filter">
                    <label
                      >Search:<input
                        type="search"
                        class="form-control form-control-sm"
                        placeholder=""
                        aria-controls="add-row"
                    /></label>
                  </div>
                </div>
							</div>
						-->
              <div class="row">
                <div class="col-sm-12">
                  <table
                    id="add-row"
                    class="display table table-striped table-hover dataTable"
                    role="grid"
                    aria-describedby="add-row_info"
                  >
                    <thead>
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
                          Event Category
                        </th>
                        
                        
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Office: activate to sort column ascending"
                          style="width: 295px;"
                        >
                          Add Services
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
                          Added Date
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Office: activate to sort column ascending"
                          style="width: 295px;"
                        >
                          Event ID
                        </th>
                        <th
                        class="sorting"
                        tabindex="0"
                        aria-controls="add-row"
                        rowspan="1"
                        colspan="1"
                        aria-label="Office: activate to sort column ascending"
                        style="width: 295px;"
                      >
                        Actions
                      </th>
              
                      </tr>
                    </thead>
                    <tbody>
                    
                    
                    <%

          			Connection con = DBConnection.getConnection();         			
        			        			
         			CustomerDataSet customerData_getSession = new CustomerDataSet(request);	
        			ResultSet rs_my_events =  customerData_getSession.Sql_my_events();
    
        			
         			while(rs_my_events.next()){
                    
                    
                    %>
                    
                    
                    
                    
                      <tr role="row" class="odd">
                      
                     
                        <td class="sorting_1"><%=rs_my_events.getString("token_title") %></td>
                        <td> <center><a href="contact.jsp?id=<%=rs_my_events.getString("token_id") %>"><i class="fas fa-plus-circle fa-2x"></i></a></center></td>
                                               
                        <td><%=rs_my_events.getString("added_date") %></td>
                        <td><%=rs_my_events.getString("token_id") %></td>
                      
                        
                     
                        <td style="width:250px;">
                        
                          <div class="form-button-action">
                            <button
                              type="button"
                              data-toggle="tooltip"
                              title=""
                              class="btn btn-info btn-sm"
                            
                              data-original-title="Edit Task"
                            >
                              <a href="bidService.jsp?id=<%= rs_my_events.getString("tk.token_id")%>"> <i class="fas fa-hand-point-right"></i></a>
                            </button>
                            
                            
                            <button
                              type="button"
                              data-toggle="tooltip"
                              title=""
                              class="btn btn-warning btn-sm"
                            
                              data-original-title="Edit Task"
                            >
                             <i class="fas fa-certificate"></i>
                            </button>
                            
                            
                            
                            <button
                              type="button"
                              data-toggle="tooltip"
                              title=""
                              class="btn btn-danger btn-sm"
                              data-original-title="Remove"  
                            >
                              <i class="fa fa-trash">	</i>
                            </button>
                          </div>
                        </td>
                      </tr>
                      
                      <%
         			}
                      %>
                      
                      
                      
                      
                      
                      
                      
                      
                      
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
				</div>
					<!--Tab 2-->
							
						   <div class="row">
                <div class="col-sm-12">
                  <table
                    id="add-row"
                    class="display table table-striped table-hover dataTable"
                    role="grid"
                    aria-describedby="add-row_info"
                  >
                    <thead>
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
                          Provider Name
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
                         Provider Contact
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Office: activate to sort column ascending"
                          style="width: 295px;"
                        >
                          Adds of Provider
                        </th>
            
                        <th
                          style="width: 127px;"
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Action: activate to sort column ascending"
                        >
                          Action
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    
                    <%

          			//Connection con = DBConnection.getConnection();         			
        			//Statement s_customers = con.createStatement();
        			
        			//String sql_display_customer_list = "SELECT stk.name,stk.email,stk.mobile,cus.stakeholder_id , stk.user_id FROM customer cus , stakehoders stk WHERE cus.stakeholder_id = stk.user_id AND stk.type = 'Customer'";
         			//ResultSet rs_cutomer_list =  s_customers.executeQuery(sql_display_customer_list);
         			
         			CustomerDataSet customerData = new CustomerDataSet();
					ResultSet rs_provider_list =  customerData.Sql_display_provider_list();
         			
        			
         			while(rs_provider_list.next()){
                    
                    
                    %>
                    
                    
                    
                    
                    
                      <tr role="row" class="odd">
                        <td class="sorting_1"><%= rs_provider_list.getString("name") %></td>
                        
                        
                        <td> <!--email  -->
                        	<button
                              type="button"
                              data-toggle="tooltip"
                              title=""
                              class="btn btn-info btn-sm"
                            	data-placement="bottom" 
                              data-original-title="<%= rs_provider_list.getString("email") %>">
                              
                          <i class="fas fa-envelope"></i>
                            </button>
                            
                            <!--   mobile  -->
                            <button
                              type="button"
                              data-toggle="tooltip"
                              title=""
                              class="btn btn-success btn-sm"
                            	 data-placement="top" 
                              data-original-title="<%= rs_provider_list.getString("mobile") %>">
                              
                         <i class="fas fa-phone"></i>
                            </button>
                        
                        
                        
                        </td>
                       
                    
						                        
                        
                        
                        <td>
                        
                            
                        <button type="button" class="btn btn-primary btn-sm">
						  Addvertiesments <span class="badge badge-light">4</span>
						</button>
                        
                        
                        </td>
                        
                        
                        
                        
                        
                        
                        <td  style="width:250px;">
                          <div class="form-button-action">
                          
                            <button
                              type="button"
                              data-toggle="modal"
                              data-target = "#customer_profile"
                              title=""
                              class="btn btn-dark btn-sm"
                            
                              data-original-title="Customer's Profile"
                            >
                             <i class="fas fa-user"></i>	View Profile
                            </button>
                            
                            
 									<!-- Modal -->
									<div class="modal fade" id="customer_profile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalLabel">Customer Details</h5>
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
									          <span aria-hidden="true">&times;</span>
									        </button>
									      </div>
									      <div class="modal-body">
									      
									      
									      
									      </br>
									      
									      
									      <center>
									      	  <i class="fas fa-user-circle fa-5x"></i>
									      </center>
									      </br>
									
												<table	id="add-row"
								                    class="display table table-striped table-hover dataTable"
								                    role="grid"
								                    aria-describedby="add-row_info">
													<tbody>
													
														        <tr role="row">
											                        <td
											                          class="sorting_asc"
											                          tabindex="0"
											                          aria-controls="add-row"
											                          rowspan="1"
											                          colspan="1"
											                          aria-sort="ascending"
											                          aria-label="Name: activate to sort column descending"
											                          style="width: 366px;"
											                        >
											                          Customer Name
											                        </td>
											                        
											                        
											                           <td
											                          class="sorting_asc"
											                          tabindex="0"
											                          aria-controls="add-row"
											                          rowspan="1"
											                          colspan="1"
											                          aria-sort="ascending"
											                          aria-label="Name: activate to sort column descending"
											                          style="width: 366px;"
											                        >
											                          <strong><%= rs_provider_list.getString("name") %></strong>
											                        </td>
											                        
											                        </tr>
											                        
											                        
														        <tr role="row">
											                        <td
											                          class="sorting_asc"
											                          tabindex="0"
											                          aria-controls="add-row"
											                          rowspan="1"
											                          colspan="1"
											                          aria-sort="ascending"
											                          aria-label="Name: activate to sort column descending"
											                          style="width: 366px;"
											                        >
											                          Customer Mobile 
											                        </td>
											                        
											                        
											                           <td
											                          class="sorting_asc"
											                          tabindex="0"
											                          aria-controls="add-row"
											                          rowspan="1"
											                          colspan="1"
											                          aria-sort="ascending"
											                          aria-label="Name: activate to sort column descending"
											                          style="width: 366px;"
											                        >
											                          <strong><%= rs_provider_list.getString("mobile") %></strong>
											                        </td>
											                        
											                        </tr>
											                        
											                        
											                        
														        <tr role="row">
											                        <td
											                          class="sorting_asc"
											                          tabindex="0"
											                          aria-controls="add-row"
											                          rowspan="1"
											                          colspan="1"
											                          aria-sort="ascending"
											                          aria-label="Name: activate to sort column descending"
											                          style="width: 366px;"
											                        >
											                          Customer Email 
											                        </td>
											                        
											                        
											                           <td
											                          class="sorting_asc"
											                          tabindex="0"
											                          aria-controls="add-row"
											                          rowspan="1"
											                          colspan="1"
											                          aria-sort="ascending"
											                          aria-label="Name: activate to sort column descending"
											                          style="width: 366px;"
											                        >
											                          <strong><%= rs_provider_list.getString("email") %></strong>
											                        </td>
											                        
											                        </tr>
											                        
											                        
											                        	        <tr role="row">
											                        <td
											                          class="sorting_asc"
											                          tabindex="0"
											                          aria-controls="add-row"
											                          rowspan="1"
											                          colspan="1"
											                          aria-sort="ascending"
											                          aria-label="Name: activate to sort column descending"
											                          style="width: 366px;"
											                        >
											                          Registered Date
											                        </td>
											                        
											                        
											                           <td
											                          class="sorting_asc"
											                          tabindex="0"
											                          aria-controls="add-row"
											                          rowspan="1"
											                          colspan="1"
											                          aria-sort="ascending"
											                          aria-label="Name: activate to sort column descending"
											                          style="width: 366px;"
											                        >
											                          <strong>2019/04/05</strong>
											                        </td>
											                        
											                        </tr>
											                        
											                        
											                        
													</tbody>
													
													
													
												
												
													
													
													
													
													
													
													
													
													
													
													
												
												
												</table>
									
									
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									        <button type="button" class="btn btn-primary">Save changes</button>
									      </div>
									    </div>
									  </div>
									</div>
                            
                            
                            
                            
                            
                            
                                  
                            <button
                              type="button"
                              data-toggle="tooltip"
                              title=""
                              class="btn btn-danger btn-sm"
                            
                              data-original-title="Star User"
                            >
                             <i class="fas fa-star"></i>
                            </button>
                            
                            
                          </div>
                        </td>
                      </tr>
                      
                      
                      <%
                      }                      
                      %>
                      
                      
                      
                      
                    </tbody>
                  </table>
                </div>
              </div>
     
						
						
					<!--End Tab 2-->

					<!-- Tab 3-->
							   <div class="row">
                <div class="col-sm-12">
                  <table
                    id="add-row"
                    class="display table table-striped table-hover dataTable"
                    role="grid"
                    aria-describedby="add-row_info"
                  >
                    <thead>
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
                          Provider Name
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
                          Provider Role
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Office: activate to sort column ascending"
                          style="width: 295px;"
                        >
                         Contact
                        </th>
                        
                        
                         </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Office: activate to sort column ascending"
                          style="width: 295px;"
                        >
                         Statistics
                        </th>
                        
                        
                       
                        <th
                          style="width: 127px;"
                          class="sorting"
                          tabindex="0"
                          aria-controls="add-row"
                          rowspan="1"
                          colspan="1"
                          aria-label="Action: activate to sort column ascending"
                        >
                          Action
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      
        
                      
                    </tbody>
                  </table>
                </div>
              </div>
					<!--End Tab 3-->

						<!-- Tab 4-->
			
						<!--End Tab 4-->

						<!-- Tab 5-->
			
						<!--End Tab 5-->
			</div>
			</div>

	<div class="clearfix"></div>
	</div>
	</div>
	<script src="js/easyResponsiveTabs.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {

			$('#parentHorizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				tabidentify: 'hor_1', // The tab groups identifier
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#nested-tabInfo');
					var $name = $('span', $info);
		
					$name.text($tab.text());
		
					$info.show();
				}
			});
	 
		});
	</script>
	<!-- //Search form -->
	


<!-- //footer -->	
<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js"> </script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
	  			containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
							
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- for smooth scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
	</script>








		<jsp:include page="WEB-INF/views/footerAdmin.jsp"></jsp:include>
</body>
</html>