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
		
	<div class="w3ls-assisted_Services">
		<div class="container">
		<div class="assisted_Services-agileits">
		<h2>Post a Servuce</h2>
			<h4>Interested in Assisted Service?</h4>
			<p>Leave your details below, we'll call you back.</p>
			
			<form action="./PostServive" method="post"

				<label>Service Name:</label>
				<input type="text" placeholder="Service Name" name="name" required="required" class="form-control"/>

        <label>Service Category:</label>
				  <select class="form-control" name="category">
          <option value="Category" selected disabled>Select a Category</option>
          <option value="Category">Category 1</option>
          <option value="Category">Category 2</option>
          <option value="Category">Category 3</option>
          <option value="Category">Category 4</option>
        </select>

				<label>Service Description:</label>
				<textarea class="form-control" name="serviceDescription" rows="8" cols="80"></textarea>

        <label>File Upload:</label>
      Select a file to upload: <br/>
         <input type = "file" name = "file" size = "50" />
         <br />

				<label>Price in Rupees:</label>
        <input type="number" class="form-control"  name="price" placeholder="10000"></input>

        <label>Price Description:</label>
        <textarea class="form-control" name="priceDescription" rows="4" cols="20" placeholder="Mentioned Price is only for per unit.. "></textarea>

<br>
				<input type="submit" value="upload" />
			</form>
		</div>
	</div>
		
















 		<jsp:include page="WEB-INF/views/footerAdmin.jsp"></jsp:include>

</body>
</html>