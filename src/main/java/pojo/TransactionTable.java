package pojo;

import java.util.Date;

public class TransactionTable {
	private Integer id;
	private String agent_code;
	private Date enter_date;
	private String customerID;
	private String customerName;
	private String co_applicantID;
	private String coApplicantName;
	private String referrerID;
	private String referrerName;
	private Date referral_time;
	private String comments;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAgent_code() {
		return agent_code;
	}
	public void setAgent_code(String agent_code) {
		this.agent_code = agent_code;
	}
	public Date getEnter_date() {
		return enter_date;
	}
	public void setEnter_date(Date enter_date) {
		this.enter_date = enter_date;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCo_applicantID() {
		return co_applicantID;
	}
	public void setCo_applicantID(String co_applicantID) {
		this.co_applicantID = co_applicantID;
	}
	public String getCoApplicantName() {
		return coApplicantName;
	}
	public void setCoApplicantName(String coApplicantName) {
		this.coApplicantName = coApplicantName;
	}
	public String getReferrerID() {
		return referrerID;
	}
	public void setReferrerID(String referrerID) {
		this.referrerID = referrerID;
	}
	public String getReferrerName() {
		return referrerName;
	}
	public void setReferrerName(String referrerName) {
		this.referrerName = referrerName;
	}
	public Date getReferral_time() {
		return referral_time;
	}
	public void setReferral_time(Date referral_time) {
		this.referral_time = referral_time;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	@Override
	public String toString() {
		return "TransactionTable [id=" + id + ", agent_code=" + agent_code + ", enter_date=" + enter_date
				+ ", customerID=" + customerID + ", customerName=" + customerName + ", co_applicantID=" + co_applicantID
				+ ", coApplicantName=" + coApplicantName + ", referrerID=" + referrerID + ", referrerName="
				+ referrerName + ", referral_time=" + referral_time + ", comments=" + comments + "]";
	}
	
}
