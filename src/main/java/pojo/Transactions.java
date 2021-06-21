package pojo;

import java.util.Date;


public class Transactions {
	private Integer id;
	private String agentCode;
	private Date enterDate;
	private Customer customer;
	private Boolean hasCoApplicant;
	private Customer coApplicant;
	private String referrerId;
	private String referrerFirstName;
	private String referrerLastName;
	private Date referralTime;
	private String comments;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAgentCode() {
		return agentCode;
	}
	public void setAgentCode(String agentCode) {
		this.agentCode = agentCode;
	}
	public Date getEnterDate() {
		return enterDate;
	}
	public void setEnterDate(Date enterDate) {
		this.enterDate = enterDate;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Boolean getHasCoApplicant() {
		return hasCoApplicant;
	}
	public void setHasCoApplicant(Boolean hasCoApplicant) {
		this.hasCoApplicant = hasCoApplicant;
	}
	public Customer getCoApplicant() {
		return coApplicant;
	}
	public void setCoApplicant(Customer coApplicant) {
		this.coApplicant = coApplicant;
	}
	public String getReferrerId() {
		return referrerId;
	}
	public void setReferrerId(String referrerId) {
		this.referrerId = referrerId;
	}
	public String getReferrerFirstName() {
		return referrerFirstName;
	}
	public void setReferrerFirstName(String referrerFirstName) {
		this.referrerFirstName = referrerFirstName;
	}
	public String getReferrerLastName() {
		return referrerLastName;
	}
	public void setReferrerLastName(String referrerLastName) {
		this.referrerLastName = referrerLastName;
	}
	public Date getReferralTime() {
		return referralTime;
	}
	public void setReferralTime(Date referralTime) {
		this.referralTime = referralTime;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	@Override
	public String toString() {
		return "Transactions [id=" + id + ", agentCode=" + agentCode + ", enterDate=" + enterDate + ", customer="
				+ customer + ", hasCoApplicant=" + hasCoApplicant + ", coApplicant=" + coApplicant + ", referrerId="
				+ referrerId + ", referrerFirstName=" + referrerFirstName + ", referrerLastName=" + referrerLastName
				+ ", referralTime=" + referralTime + ", comments=" + comments + "]";
	}
	
}
