<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




		<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>
		
		
		
<div class="w3layouts-banner" id="home">
<div class="container">
	<div class="logo">
		<h1><a class="cd-logo link link--takiri" href="index.jsp">Events With Elegance <span><i class="fa fa-like" aria-hidden="true"></i> </span></a></h1>

	</div>
	
				

	<div class="clearfix"></div>

	<div class="agileits-register">

		<h3>Register NOW!</h3>
		<form action="SetNewUser" method="post">
				<div class="w3_modal_body_grid">
					<span>Profile For:</span>
			
					<select id="w3_country" onchange="myFunction();" class="frm-field required" name="type">
					
					
						<option value="0">Select
						<option value="Customer">Customer   
						<option value="Provider">Organizer   
				
						
						<script>
							function myFunction() {
							  var x = document.getElementById("w3_country").value;
							 // document.getElementById("demo").innerHTML = "You selected: ";
							  
							  if(x == 'Provider'){
								  
								  document.getElementById("pro2").innerHTML = '<span>Role</span><div class="w3_gender"><div class="colr ert"><label class="radio"><input type="radio" name="radio" checked="" value="Single"><i></i>Single Person</label></div><div class="colr"><label class="radio"><input type="radio" name="radio" value="Community"><i></i>Community</label></div><div class="clearfix"> </div></div><div class="clearfix"> </div>';
														
							  }
							  else if(x == 'Customer'){
								  
								  document.getElementById("pro2").innerHTML = "";
								  
							  }
							
							  
							 
							}

						</script> 
						
			
			
					
					</select>
				</div>
				
				



				
					<script>	
					function successMsg() { 
						alert('Login Successfull');
					}
					</script> 

				
				
		
				
			
				
				
				
				<div class="w3_modal_body_grid w3_modal_body_grid1"  id="pro1">
					<span>Name:</span>
					<input type="text" name="Name" placeholder=""  required=""/>					
				</div>
				
				<div class="w3_modal_body_grid" id="pro2">
		
					
					
                </div>
                
                <!--
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Date Of Birth:</span>
					<input class="date" id="datepicker" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '2/08/2013';}" required="" />
                </div>
                -->

                <!--
				<div class="w3_modal_body_grid">
					<span>religion:</span>
					<select id="w3_country1" onchange="change_country(this.value)" class="frm-field required"> 
						<option value="null">Select Religion</option>
						<option value="null">Muslim</option>
						<option value="null">Hindu</option>    
						<option value="null">Christian</option>   
						<option value="null">Sikh</option>   
						<option value="null">Jain</option>   
						<option value="null">Buddhist</option>
						<option value="null">No Religious Belief</option>   						
					</select>
                </div>
                -->
                
				<div class="w3_modal_body_grid w3_modal_body_grid1">
				<span>Mobile No:</span>
				<!-- country codes (ISO 3166) and Dial codes. -->
					<input id="phone" type="tel" name="phone">
				  <!-- Load jQuery from CDN so can run demo immediately -->
				  <script src="js/intlTelInput.js"></script>
				  <script>
					$("#phone").intlTelInput({
					  // allowDropdown: false,
					  // autoHideDialCode: false,
					  // autoPlaceholder: "off",
					  // dropdownContainer: "body",
					  // excludeCountries: ["us"],
					  // formatOnDisplay: false,
					  // geoIpLookup: function(callback) {
					  //   $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
					  //     var countryCode = (resp && resp.country) ? resp.country : "";
					  //     callback(countryCode);
					  //   });
					  // },
					  // initialCountry: "auto",
					  // nationalMode: false,
					  // onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
					  // placeholderNumberType: "MOBILE",
					  // preferredCountries: ['cn', 'jp'],
					  // separateDialCode: true,
					  utilsScript: "js/utils.js"
					});
				  </script>
				</div>
				<div class="w3_modal_body_grid">
					<span>Email:</span>
					<input type="email" name="Email" placeholder="Email" required=""/>
				</div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Password:</span>
					<input type="password" name="Password" placeholder="Password" required=""/>
                </div>
                
                <div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Confirm:</span>
					<input type="password" name="ConfirmPassword" placeholder="Confirm Passowrd" required=""/>
                </div>
                
				<div class="w3-agree">
					<input type="checkbox" id="c1" name="cc">
					<label for="c1" class="agileits-agree">I have read & agree to the <a href="">Terms and Conditions</a></label>
				</div>
				<input type="submit" value="Register me" />
				<div class="clearfix"></div>
				<p class="w3ls-login">Already a member? <a href="#" data-toggle="modal" data-target="#myModal">Login</a></p>
			</form>
		</div>
		
		
		<!-- Modal -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
				  <div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>		
						<h4 class="modal-title">Login to Continue</h4>
					  </div>
					  <div class="modal-body">
						<div class="login-w3ls">
						
							<form id="signin" action="SetLoginDetails" method="post" >

		
                                <input type="text" name="email" placeholder="Email" required="">
                                </br></br>

                                <input type="password" name="password" placeholder="Password" required="">	

                  
                                
								<div class="w3ls-loginr"> 
									<input type="checkbox" id="brand" name="checkbox" value="">
									<span> Remember me ?</span> 
									<a href="#">Forgot password ?</a>
								</div>
								
								
								
								<div class="clearfix"> </div>
								<input type="submit" name="submit" value="Login" onsubmit="successMsg()">
								<div class="clearfix"> </div>
								<div class="social-icons">
									<ul>  
										<li><a href="#"><span class="icons"><i class="fa fa-facebook" aria-hidden="true"></i></span><span class="text">Facebook</span></a></li> 
										<li class="twt"><a href="#"><span class="icons"><i class="fa fa-twitter" aria-hidden="true"></i></span><span class="text">Twitter</span></a></li>  
									</ul> 
									<div class="clearfix"> </div>
								</div>	
								
								
							</form>
							
							
							
						</div>
					  </div>
					</div>
				  </div>
				</div>
				<!-- //Modal -->
				
				
				
	</div>
</div>
<!-- Find your soulmate -->
	<div class="w3l_find-soulmate text-center">
		<h3>Plan With Simplicity</h3>
			<div class="container">
				<a class="scroll" href="#home">
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
						<h3>Sign Up</h3>
						<p>Signup for free and create your profile</p>
					</div>
				</a>
				<a class="scroll" href="#home">
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-search" aria-hidden="true"></i>
						<h3>Search</h3>
						<p>Search for find exactly event</p>
					</div>
				</a>
				<a class="scroll" href="#home">
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-users" aria-hidden="true"></i>
						<h3>Discuss</h3>
						<p>Discuss your perfection with providers </p>
					</div>
				</a>
				<a class="scroll" href="#home">
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-comments-o" aria-hidden="true"></i>
						<h3>Interact</h3>
						<p>Become a member and provide service</p>
					</div>
				</a>
				<div class="clearfix"> </div>
			</div>
	</div>
	<!-- //Find your soulmate -->
		
		<!-- featured profiles -->			
			
		
			<!-- //featured profiles -->		   
					   
		<!-- mobile-app -->
			<div class="wthree-mobilaapp main-grid-border">
				<div class="container">
					<div class="app">
						<div class="col-md-6 w3ls_app-left mpl">
							<h3>Matrimonial mobile app on your smartphone!</h3>
							<p>Eventza provides easy-to-use, integrated technology solutions to maximize the impact of meetings and events of all sizes. We help organizations plan and market events, execute onsite, engage audiences and measure and analyze results..</p>
							<div class="agileits_app-devices">
								<h5>Download the App</h5>
								<a href="#"><img src="images/1.png" alt=""></a>
								<a href="#"><img src="images/2.png" alt=""></a>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="col-md-offset-1 col-md-5 app-image">
							<img src="images/mob.png" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!-- /mobile-app -->
	
	<!-- browse profiles -->
	
	<!-- //browse profiles -->
	
	<!-- Assisted Service -->
	<div class="agile-assisted-service text-center">
		<h4>Assisted Service</h4>
		<p>In 2018, Eventza added 1,000 net new employees and more than 5,000 new customers to its global customer base.</p>
		<a href="assisted_services.html">Know More</a>
	</div>
	<!-- //Assisted Service -->
	
	


		
		
		
		
		
		
		
		
		
		
		<jsp:include page="WEB-INF/views/footerContact.jsp"></jsp:include>

		


</body>
</html>