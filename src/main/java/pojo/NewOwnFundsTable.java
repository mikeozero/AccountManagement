package pojo;

import java.util.Date;

public class NewOwnFundsTable {
	private Integer id;
	private String customerId;
	private Boolean completed;
	private Date applyDate;
	private Double applyAmount;
	private String accountType;
	private String investTo;
	private String nameOfOwner;
	private String salesCharge;
	private Date settleDate;
	private String contractNo;
	private Double settleAmount;
	private String result;
	private Double referralFee;
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
	public Boolean getCompleted() {
		return completed;
	}
	public void setCompleted(Boolean completed) {
		this.completed = completed;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	public Double getApplyAmount() {
		return applyAmount;
	}
	public void setApplyAmount(Double applyAmount) {
		this.applyAmount = applyAmount;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getInvestTo() {
		return investTo;
	}
	public void setInvestTo(String investTo) {
		this.investTo = investTo;
	}
	public String getNameOfOwner() {
		return nameOfOwner;
	}
	public void setNameOfOwner(String nameOfOwner) {
		this.nameOfOwner = nameOfOwner;
	}
	public String getSalesCharge() {
		return salesCharge;
	}
	public void setSalesCharge(String salesCharge) {
		this.salesCharge = salesCharge;
	}
	public Date getSettleDate() {
		return settleDate;
	}
	public void setSettleDate(Date settleDate) {
		this.settleDate = settleDate;
	}
	public String getContractNo() {
		return contractNo;
	}
	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}
	public Double getSettleAmount() {
		return settleAmount;
	}
	public void setSettleAmount(Double settleAmount) {
		this.settleAmount = settleAmount;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Double getReferralFee() {
		return referralFee;
	}
	public void setReferralFee(Double referralFee) {
		this.referralFee = referralFee;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "NewOwnFundsTable [id=" + id + ", customerId=" + customerId + ", completed=" + completed + ", applyDate="
				+ applyDate + ", applyAmount=" + applyAmount + ", accountType=" + accountType + ", investTo=" + investTo
				+ ", nameOfOwner=" + nameOfOwner + ", salesCharge=" + salesCharge + ", settleDate=" + settleDate
				+ ", contractNo=" + contractNo + ", settleAmount=" + settleAmount + ", result=" + result
				+ ", referralFee=" + referralFee + ", comments=" + comments + "]";
	}
	
}
