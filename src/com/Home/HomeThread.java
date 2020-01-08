package com.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeThread extends Thread{
	
	private HttpServletResponse response= null;
	private HttpServletRequest request = null;
	
	private int total = 0;
	private int prcentage = 0;
	public void run() {
	
		for(int i = 0 ; i < 100 ; i = i + 10) {
			total = i + 10;
			prcentage = total;
			System.out.println(prcentage+ "%");
			try {
								
				Thread.sleep(200);
				
			} catch (InterruptedException e) {
			
				e.printStackTrace();
			}
			
			if(prcentage == 90) {
				break;
			}
			
			
		}
		
		System.out.println("prcentage : " +prcentage);
		this.prcentage = prcentage;
		
	}
	public int getPrcentage() {
		return prcentage;
	}
	
	
	
	
	

	
	

	
	
	
	
	

}
