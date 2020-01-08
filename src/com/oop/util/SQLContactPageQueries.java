package com.oop.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SQLContactPageQueries {
	
	protected int  tokenId;
	protected String  sql_token_id_count_catering;
	protected String  sql_token_id_count_wedding;
	private String sql_display_tokens_catering;
	private String sql_get_catering_key;
	private String sql_contact_page_restrictions;
	
	public SQLContactPageQueries(int tokenId) {
		sql_token_id_count_catering = "SELECT COUNT(token_id) as 'counter' FROM catering WHERE token_id = '"+tokenId+"'";
		sql_token_id_count_wedding = "SELECT COUNT(token_id) as 'counter' FROM wedding WHERE token_id = '"+tokenId+"'";
		sql_contact_page_restrictions = "SELECT st.email,st.type FROM stakehoders st,tokens tk where tk.token_id = '"+tokenId+"' and tk.stakeholder_id = st.user_id";		
	}
	
	public SQLContactPageQueries(HttpServletRequest request) {
		
		HttpSession session = request.getSession(); //CREATING A SESSION OBJECT
		//session.setAttribute("sessionEmail",email);
		
		sql_contact_page_restrictions = "SELECT st.email FROM stakehoders st,tokens tk where tk.token_id = '"+request.getParameter("id")+"' and tk.stakeholder_id = st.user_id";
		
	}
	

	
	//return tokenId in previweToken.jsp
	

		public String getSql_token_id_count_wedding() {
			return sql_token_id_count_wedding;
		}
		
		
		
		public String getSql_token_id_count_catering() {
			return sql_token_id_count_catering;
		}
		

		//////////////////preViewToken.jsp///////////////////////////
		
		
		
		public String getSql_contact_page_restrictions() {
			return sql_contact_page_restrictions;
		}

}
