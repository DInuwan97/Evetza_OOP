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


<style type="text/css">
  

  table {
  width: 100%;
  border-collapse: collapse;
}


/* Zebra striping */

tr:nth-of-type(odd) {
  background: #f4f4f4;
}

tr:nth-of-type(even) {
  background: #fff;
}

th {
  background: #782f40;
  color: #ffffff;
  font-weight: 300;
}

td,
th {
  padding: 10px;
  border: 1px solid #ccc;
  text-align: left;
}

td:nth-of-type(1) {
  font-weight: 500 !important;
}

td {
  font-family: 'Roboto', sans-serif !important;
  font-weight: 300;
  line-height: 20px;
}

span {
  font-style: italic
}

@media only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px) {

  /* Force table to not be like tables anymore */
  table.responsive,
  .responsive thead,
  .responsive tbody,
  .responsive th,
  .responsive td,
  .responsive tr {
    display: block !important;
  }

  /* Hide table headers (but not display: none;, for accessibility) */
  .responsive thead tr {
    position: absolute !important;
    top: -9999px;
    left: -9999px;
  }

  .responsive tr {
    border: 1px solid #ccc;
  }

  .responsive td {
    /* Behave  like a "row" */
    border: none;
    border-bottom: 1px solid #eee !important;
    position: relative !important;
    padding-left: 25% !important;
  }

  .responsive td:before {
    /* Now like a table header */
    position: absolute !important;
    /* Top/left values mimic padding */
    top: 6px;
    left: 6px;
    width: 45%;
    padding-right: 10px;
    white-space: nowrap !important;
    font-weight: 500 !important;
  }

  /*
  Label the data
  */
  .responsive td:before {
    content: attr(data-table-header) !important;
  }
}





</style>








<div class="row">
<div class="container"> 
  
</br></br>


  <table class="table responsive" id="sort">
  
  
  <thead >
    <tr style="background:#34ACD9">
      <th scope="col">Event Title</th>
      <th scope="col">Added Date</th>
      <th scope="col">Added Time</th>
      <th scope="col">Lot:Num</th>
      <th scope="col">Link</th>
    </tr>
  </thead>
  
  
  
  <tbody>
  
  
  					
			 <%
			 Connection connection = null;
			 Statement statement = null;
			  ResultSet resultSet = null;
			 ResultSet resultSet1 = null;
				
		          			try {
		          				
		          			
		          			Connection con = DBConnection.getConnection();
		          			
		        			Statement s = con.createStatement();
		        			String sql = "SELECT * FROM tokens tk,stakehoders stk where stk.email = '"+session.getAttribute("sessionEmail")+"' AND stk.user_id = tk.stakeholder_id order by token_id desc";
		        			resultSet = s.executeQuery(sql);
		        			
		        			while(resultSet.next()){
		     %>
  
    <tr>
      <td data-table-header="Title"><%=resultSet.getString("token_title") %></td>
      <td data-table-header="Authors">Matthew Withers, Lenore McWey, Mallory Lucier-Greer</td>
      <td data-table-header="Journal">Family Relations</td>
      <td data-table-header="Date"><%=resultSet.getString("token_id") %></td>
      <td data-table-header="Link"><a href="contact.jsp?id=<%=resultSet.getString("token_id") %>"><i class="fas fa-external-link-alt"></i></a></td>
    </tr>
    
    <%
		        			}
		          			}catch(Exception e){
		          				e.printStackTrace();
		          			}
    %>
    
  </tbody>
  
  
  
</table>
</div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
<script src "https://cdn.datatables.net/plug-ins/1.10.15/sorting/stringMonthYear.js"></script>

<script type="text/javascript">
$(document).ready(function() {
   $("#sort").DataTable({
      columnDefs : [
    { type : 'date', targets : [3] }
],  
   });
});
</script>


	<jsp:include page="WEB-INF/views/footerContact.jsp"></jsp:include>