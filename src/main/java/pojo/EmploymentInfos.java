package pojo;

public class EmploymentInfos {
	private Integer id;
	private String customerId;
	private String type;
	private String employmentStatus;
	private Double annualIncome;
	private String employerName;
	private String businessAddress;
	private String duration;
	private String industry;
	private String occupation;
	
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
	public String getEmploymentStatus() {
		return employmentStatus;
	}
	public void setEmploymentStatus(String employmentStatus) {
		this.employmentStatus = employmentStatus;
	}
	public Double getAnnualIncome() {
		return annualIncome;
	}
	public void setAnnualIncome(Double annualIncome) {
		this.annualIncome = annualIncome;
	}
	public String getEmployerName() {
		return employerName;
	}
	public void setEmployerName(String employerName) {
		this.employerName = employerName;
	}
	public String getBusinessAddress() {
		return businessAddress;
	}
	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	
	@Override
	public String toString() {
		return "EmploymentInfos [id=" + id + ", customerId=" + customerId + ", type=" + type + ", employmentStatus="
				+ employmentStatus + ", annualIncome=" + annualIncome + ", employerName=" + employerName
				+ ", businessAddress=" + businessAddress + ", duration=" + duration + ", industry=" + industry
				+ ", occupation=" + occupation + "]";
	}
	
}
