package com.oop.util;

import com.oop.util.PayQueryData;

public class PayQuery {

	private String pay_sql; 
	
	
	public PayQuery(int tok_id)
	{		
		pay_sql = "SELECT bid_amount FROM bidservice WHERE bid_id = '"+tok_id+"'";	
	}
	
	public String getQuery()
	{
		
		return pay_sql;
		
		
	}
	
	
}
