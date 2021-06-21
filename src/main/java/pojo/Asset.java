package pojo;

public class Asset {
	private Integer id;
	private String customerId;
	private String type;
	private Double applicantValue;
	private String institution;
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
	public Double getApplicantValue() {
		return applicantValue;
	}
	public void setApplicantValue(Double applicantValue) {
		this.applicantValue = applicantValue;
	}
	public String getInstitution() {
		return institution;
	}
	public void setInstitution(String institution) {
		this.institution = institution;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "Asset [id=" + id + ", customerId=" + customerId + ", type=" + type + ", applicantValue="
				+ applicantValue + ", institution=" + institution + ", comments=" + comments + "]";
	}
	
}
