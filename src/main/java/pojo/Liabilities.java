package pojo;

public class Liabilities {
	private Integer id;
	private String customerId;
	private String type;
	private Double marketValue;
	private Double liabilityBalance;
	private String institution;
	private Double monthlyLiability;
	private Double monthlyPropertyTax;
	private Double monthlyCondoFee;
	private String comments;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Double getMarketValue() {
		return marketValue;
	}
	public void setMarketValue(Double marketValue) {
		this.marketValue = marketValue;
	}
	public Double getLiabilityBalance() {
		return liabilityBalance;
	}
	public void setLiabilityBalance(Double liabilityBalance) {
		this.liabilityBalance = liabilityBalance;
	}
	public String getInstitution() {
		return institution;
	}
	public void setInstitution(String institution) {
		this.institution = institution;
	}
	public Double getMonthlyLiability() {
		return monthlyLiability;
	}
	public void setMonthlyLiability(Double monthlyLiability) {
		this.monthlyLiability = monthlyLiability;
	}
	public Double getMonthlyPropertyTax() {
		return monthlyPropertyTax;
	}
	public void setMonthlyPropertyTax(Double monthlyPropertyTax) {
		this.monthlyPropertyTax = monthlyPropertyTax;
	}
	public Double getMonthlyCondoFee() {
		return monthlyCondoFee;
	}
	public void setMonthlyCondoFee(Double monthlyCondoFee) {
		this.monthlyCondoFee = monthlyCondoFee;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	@Override
	public String toString() {
		return "Liabilities [id=" + id + ", customerId=" + customerId + ", type=" + type + ", marketValue="
				+ marketValue + ", liabilityBalance=" + liabilityBalance + ", institution=" + institution
				+ ", monthlyLiability=" + monthlyLiability + ", monthlyPropertyTax=" + monthlyPropertyTax
				+ ", monthlyCondoFee=" + monthlyCondoFee + ", comments=" + comments + "]";
	}
	
}
