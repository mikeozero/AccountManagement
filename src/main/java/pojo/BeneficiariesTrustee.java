package pojo;

import java.util.Date;


public class BeneficiariesTrustee {
	private Integer id;
	private String customerId;
	private String type;
	private String lastName;
	private String firstName;
	private String relationship;
	private String gender;
	private String benificiaryType;
	private Date dob;
	private Float sharePercent;
	private String sinForRESPOnly;
	
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
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBenificiaryType() {
		return benificiaryType;
	}
	public void setBenificiaryType(String benificiaryType) {
		this.benificiaryType = benificiaryType;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Float getSharePercent() {
		return sharePercent;
	}
	public void setSharePercent(Float sharePercent) {
		this.sharePercent = sharePercent;
	}
	public String getSinForRESPOnly() {
		return sinForRESPOnly;
	}
	public void setSinForRESPOnly(String sinForRESPOnly) {
		this.sinForRESPOnly = sinForRESPOnly;
	}
	
	@Override
	public String toString() {
		return "BeneficiariesTrustee [id=" + id + ", customerId=" + customerId + ", type=" + type + ", lastName="
				+ lastName + ", firstName=" + firstName + ", relationship=" + relationship + ", gender=" + gender
				+ ", benificiaryType=" + benificiaryType + ", dob=" + dob + ", sharePercent=" + sharePercent + ", sinForRESPOnly="
				+ sinForRESPOnly + "]";
	}
	
}
