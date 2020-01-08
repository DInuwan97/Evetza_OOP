package com.oop.util;

public class BidServicesQueries {
	
	private int tokenId;
	
	private String sql_catering_token_details;
	private String sql_wedding_token_details;
	private String sql_display_catering_ongoing_bid;
	private String sql_display_wedding_ongoing_bid;
	
	public BidServicesQueries(int tokenId) {
		
		//this.tokenId = tokenId
		
		sql_catering_token_details = "SELECT * from catering WHERE token_id = '"+tokenId+"'";
		sql_wedding_token_details = "SELECT * from wedding WHERE token_id = '"+tokenId+"'";
	}
	
	
	public BidServicesQueries(int tokenId,int cateringId,int weddingId) {
		sql_display_catering_ongoing_bid = "SELECT * FROM bidservice bs,stakehoders stk WHERE bs.token_id = '"+tokenId+"' AND bs.type_id = '"+cateringId+"' AND bs.purchase_id = stk.user_id AND bs.service_type='Catering'";
		sql_display_wedding_ongoing_bid = "SELECT * FROM bidservice bs,stakehoders stk WHERE bs.token_id = '"+tokenId+"' AND bs.type_id = '"+weddingId+"' AND bs.purchase_id = stk.user_id AND bs.service_type='Wedding'";		        			
	}
	
	
	
	
	public String getSql_catering_token_details() {
		return sql_catering_token_details;
	}
	
	public String getSql_wedding_token_details() {
		return sql_wedding_token_details;
	}


	public String getSql_display_catering_ongoing_bid() {
		return sql_display_catering_ongoing_bid;
	}

	public String getSql_display_wedding_ongoing_bid() {
		return sql_display_wedding_ongoing_bid;
	}

	


}
