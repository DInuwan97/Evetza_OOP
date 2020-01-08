package com.PurchaseService.model;

public class PurchaseCatering {

	private String typeCatering;
	private String cateringTypeId;
	private String amount;
	private String forwardProviders;
	private String forwardAdmin;
	private String confirmation;
	
	
	public String getTypeCatering() {
		return typeCatering;
	}
	public void setTypeCatering(String typeCatering) {
		typeCatering = "Catering";
		this.typeCatering = typeCatering;
	}
	public String getCateringTypeId() {
		return cateringTypeId;
	}
	public void setCateringTypeId(String cateringTypeId) {
		this.cateringTypeId = cateringTypeId;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getForwardProviders() {
		return forwardProviders;
	}
	public void setForwardProviders(String forwardProviders) {
		//forwardProviders = "VisibleAll";
		this.forwardProviders = forwardProviders;
	}
	public String getForwardAdmin() {
		return forwardAdmin;
	}
	public void setForwardAdmin(String forwardAdmin) {
		//forwardAdmin = "OnlyAdmin";
		this.forwardAdmin = forwardAdmin;
	}
	public String getConfirmation() {
		return confirmation;
	}
	public void setConfirmation(String confirmation) {
		//confirmation = "Pending";
		this.confirmation = confirmation;
	}
	
	
	
	
	
}