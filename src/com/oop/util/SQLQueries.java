package com.oop.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SQLQueries {
	
	
	private String sql_admin_all_events;
	private String sql_provider_all_events;
	
	//admin.jsp,provider_pannel.jsp,customer_pannel.jsp
	private String sql_display_customer_list;
	private String sql_display_provider_list;
	private String sql_purchase_confirmation_event;
	private String sql_customer_details;
	private String sql_my_events;
	
	//header.jsp
	private String sql_pass_sessionTo_header;
	
	
	//previewToken.jsp
	private String tokenId;
	private String sql_token_id_count_catering;
	private String sql_token_id_count_wedding;

	
	public SQLQueries() {
								
		sql_admin_all_events = "SELECT * FROM tokens tk , stakehoders stk WHERE tk.stakeholder_id = stk.user_id";
		
		sql_provider_all_events = "SELECT * FROM tokens tk , stakehoders stk , wedding wd , catering ct WHERE tk.stakeholder_id = stk.user_id AND (tk.token_id = wd.token_id AND tk.token_id = ct.token_id) AND (ct.visibility = 'ToAll' or wd.visibility = 'ToAll') ";
		
				
		sql_display_customer_list = "SELECT stk.name,stk.email,stk.mobile,cus.stakeholder_id , stk.user_id FROM customer cus , stakehoders stk WHERE cus.stakeholder_id = stk.user_id AND stk.type = 'Customer'";
		
		sql_display_provider_list = "SELECT prd.role,stk.name,stk.email,stk.mobile,prd.stakeholder_id , stk.user_id FROM provider prd , stakehoders stk WHERE prd.stakeholder_id = stk.user_id AND stk.type = 'Provider'";
			   
	}
	
	
	
	
	
	public SQLQueries(HttpServletRequest request) {
		HttpSession session = request.getSession(); //CREATING A SESSION OBJECT
		//session.setAttribute("sessionEmail",email);
		
		sql_pass_sessionTo_header = "SELECT * FROM stakehoders where email = '"+session.getAttribute("sessionEmail")+"'";
		
		
		sql_purchase_confirmation_event = "SELECT DISTINCT * FROM catering ct,bidservice bs,tokens tk,stakehoders stk WHERE (ct.catering_id = bs.type_id) AND stk.email = '"+session.getAttribute("sessionEmail")+"' AND stk.user_id = bs.purchase_id AND tk.token_id = bs.token_id";
		sql_my_events  = "SELECT * FROM tokens tk,stakehoders stk where stk.email = '"+session.getAttribute("sessionEmail")+"' AND stk.user_id = tk.stakeholder_id order by token_id desc";
		
	}
	
	public SQLQueries(String tokenId) {
		sql_customer_details = "SELECT * from stakehoders stk,tokens tk WHERE  tk.token_id = '"+tokenId+"' AND tk.stakeholder_id = stk.user_id ";		
	}
	
	
	
	//set tokenId in previweToken.jsp
	public void setSql_token_id(String tokenId) {
		this.tokenId = tokenId;
	}
	
	//return tokenId in previweToken.jsp
	public String getSql_token_id() {
		return tokenId;	
	}
	
	public  void setSql_token_id_count_catering() {
		sql_token_id_count_catering = "SELECT COUNT(token_id) as 'counter' FROM catering WHERE token_id = '"+getSql_token_id()+"'";
		
	}
	
	public String getSql_token_id_count_catering() {
		return sql_token_id_count_catering;
	}
	
	public void setSql_token_id_count_wedding() {		
		sql_token_id_count_wedding = "SELECT COUNT(token_id) as 'counter' FROM wedding WHERE token_id = '"+getSql_token_id()+"'";
	}
	
	public String getSql_token_id_count_wedding() {		
		return sql_token_id_count_wedding;
	}
	//////////////////preViewToken.jsp///////////////////////////
	

	public String getSql_admin_all_events() {
		return sql_admin_all_events;
	}
	
	public String getSql_provider_all_events() {
		return sql_provider_all_events;
	}
	
	public String getSql_display_customer_list() {
		return sql_display_customer_list;
	}
	
	public String getSql_display_provider_list() {
		return sql_display_provider_list;
	}
	
	
	//////////////////////Purchesed Events//////////////////////////////////////////////
	public String getSql_purchase_confirmation_event() {
		return sql_purchase_confirmation_event;
	}
	
	public String getSql_customer_details() {
		return sql_customer_details;
	}
	///////////////////////////////////////////////////////////////////////////////////
	
	public String getSql_my_events() {
		return sql_my_events;
	}
	
	






	public String getSql_pass_sessionTo_header() {
		// TODO Auto-generated method stub
		return sql_pass_sessionTo_header;
	}





	
	

}
