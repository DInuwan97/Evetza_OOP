package com.Payment.model;

import com.oop.util.PayQueryData;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Payment{
	
	

	private String cardName;
	private String cardNo;
	private String cvc;
	private String expDate;
	private String balance;
	
	
	
	public String getCardName() {
		return cardName;
	}
	public String getCardNo() {
		return cardNo;
	}
	public String getCvc() {
		return cvc;
	}
	public String getExpDate() {
		return expDate;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public void setCvc(String cvc) {
		this.cvc = cvc;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}

	
	


	
	
	
}
































