package pojo;

import java.util.Date;
import java.util.List;

public class Conditions {
	private String agentCode;
	private Date enterDateFrom;
	private Date enterDateTo;
	private String customerId;
	private String cuFirstName;
	private String cuLastName;
	private String coApplicantId;
	private String coFirstName;
	private String coLastName;
	private String referrerId;
	private String referrerFirstName;
	private String referrerLastName;
	private Date referralTimeFrom;
	private Date referralTimeTo;
	private Date applyDateFrom;
	private Date applyDateTo;
	private Date settleDateFrom;
	private Date settleDateTo;
	public String getAgentCode() {
		return agentCode;
	}
	public void setAgentCode(String agentCode) {
		this.agentCode = agentCode;
	}
	public Date getEnterDateFrom() {
		return enterDateFrom;
	}
	public void setEnterDateFrom(Date enterDateFrom) {
		this.enterDateFrom = enterDateFrom;
	}
	public Date getEnterDateTo() {
		return enterDateTo;
	}
	public void setEnterDateTo(Date enterDateTo) {
		this.enterDateTo = enterDateTo;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCuFirstName() {
		return cuFirstName;
	}
	public void setCuFirstName(String cuFirstName) {
		this.cuFirstName = cuFirstName;
	}
	public String getCuLastName() {
		return cuLastName;
	}
	public void setCuLastName(String cuLastName) {
		this.cuLastName = cuLastName;
	}
	public String getCoApplicantId() {
		return coApplicantId;
	}
	public void setCoApplicantId(String coApplicantId) {
		this.coApplicantId = coApplicantId;
	}
	public String getCoFirstName() {
		return coFirstName;
	}
	public void setCoFirstName(String coFirstName) {
		this.coFirstName = coFirstName;
	}
	public String getCoLastName() {
		return coLastName;
	}
	public void setCoLastName(String coLastName) {
		this.coLastName = coLastName;
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
	public Date getReferralTimeFrom() {
		return referralTimeFrom;
	}
	public void setReferralTimeFrom(Date referralTimeFrom) {
		this.referralTimeFrom = referralTimeFrom;
	}
	public Date getReferralTimeTo() {
		return referralTimeTo;
	}
	public void setReferralTimeTo(Date referralTimeTo) {
		this.referralTimeTo = referralTimeTo;
	}
	public Date getApplyDateFrom() {
		return applyDateFrom;
	}
	public void setApplyDateFrom(Date applyDateFrom) {
		this.applyDateFrom = applyDateFrom;
	}
	public Date getApplyDateTo() {
		return applyDateTo;
	}
	public void setApplyDateTo(Date applyDateTo) {
		this.applyDateTo = applyDateTo;
	}
	public Date getSettleDateFrom() {
		return settleDateFrom;
	}
	public void setSettleDateFrom(Date settleDateFrom) {
		this.settleDateFrom = settleDateFrom;
	}
	public Date getSettleDateTo() {
		return settleDateTo;
	}
	public void setSettleDateTo(Date settleDateTo) {
		this.settleDateTo = settleDateTo;
	}
	@Override
	public String toString() {
		return "Conditions [agentCode=" + agentCode + ", enterDateFrom=" + enterDateFrom + ", enterDateTo="
				+ enterDateTo + ", customerId=" + customerId + ", cuFirstName=" + cuFirstName + ", cuLastName="
				+ cuLastName + ", coApplicantId=" + coApplicantId + ", coFirstName=" + coFirstName + ", coLastName="
				+ coLastName + ", referrerId=" + referrerId + ", referrerFirstName=" + referrerFirstName
				+ ", referrerLastName=" + referrerLastName + ", referralTimeFrom=" + referralTimeFrom
				+ ", referralTimeTo=" + referralTimeTo + ", applyDateFrom=" + applyDateFrom + ", applyDateTo="
				+ applyDateTo + ", settleDateFrom=" + settleDateFrom + ", settleDateTo=" + settleDateTo + "]";
	}
	
}
