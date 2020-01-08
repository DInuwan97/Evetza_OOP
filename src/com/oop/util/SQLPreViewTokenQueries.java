package com.oop.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SQLPreViewTokenQueries {
	
	private String sql_display_tokens_catering;
	private String sql_display_tokens_wedding;
	
	private String sql_get_catering_key;
	private String sql_get_wedding_key;
	
	private String sql_check_bid_key_catering;
	private String sql_check_bid_key_wedding;
	
	
	
	public SQLPreViewTokenQueries(int tokenId) {
		
		sql_display_tokens_catering = "SELECT * FROM catering ct,stakehoders stk WHERE ct.token_id = '"+tokenId+"' AND stk.user_id = ct.stakeholder_id";
		sql_get_catering_key = "SELECT DISTINCT ct.catering_id as 'unique_type_id' FROM bidservice bs,catering ct,tokens tk WHERE (bs.type_id = ct.catering_id OR ct.token_id = '"+tokenId+"') and (bs.token_id = ct.token_id or ct.token_id = '"+tokenId+"') AND (bs.token_id = '"+tokenId+"' or ct.token_id = '"+tokenId+"')";
		
		sql_display_tokens_wedding = "SELECT * FROM wedding wd,stakehoders stk WHERE token_id = '"+tokenId+"' AND stk.user_id = wd.stakeholder_id";
		sql_get_wedding_key = "SELECT DISTINCT wd.wedding_id as 'unique_type_id_wedding' FROM bidservice bs,wedding wd,tokens tk WHERE (bs.type_id = wd.wedding_id OR wd.token_id = '"+tokenId+"') and (bs.token_id = wd.token_id or wd.token_id = '"+tokenId+"') AND (bs.token_id = '"+tokenId+"' or wd.token_id = '"+tokenId+"')";
	}
	
	
	public SQLPreViewTokenQueries(int catering_key_id,int wedding_key_id,HttpServletRequest request){
		HttpSession session = request.getSession(); //CREATING A SESSION OBJECT
		//session.setAttribute("sessionEmail",email);
		
		sql_check_bid_key_catering = "SELECT COUNT(stk.user_id) as 'counter' FROM stakehoders stk,bidservice bs WHERE bs.type_id = '"+catering_key_id+"'  AND stk.email = '"+session.getAttribute("sessionEmail")+"' AND stk.user_id = bs.purchase_id AND bs.service_type = 'Catering'";
		sql_check_bid_key_wedding = "";
	}


	public String getSql_display_tokens_catering() {
		return sql_display_tokens_catering;
	}

	public String getSql_display_tokens_wedding() {
		return sql_display_tokens_wedding;
	}


	public String getSql_get_catering_key() {
		return sql_get_catering_key;
	}
	
	public String getSql_get_wedding_key() {
		return sql_get_wedding_key;
	}

	public String getSql_check_bid_key_catering() {
		return sql_check_bid_key_catering;
	}
	
	public String getSql_check_bid_key_wedding(){
		return sql_check_bid_key_wedding;
	}
	
	
	
	

}
