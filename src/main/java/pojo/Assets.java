package pojo;

public class Assets {
	private String id;
	private String customerId;
	private String coApplicantId;
	private String type;
	private Double applicantValue;
	private String institution;
	private Double coApplicantValue;
	private String coInstitution;
	private String comments;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCoApplicantId() {
		return coApplicantId;
	}
	public void setCoApplicantId(String coApplicantId) {
		this.coApplicantId = coApplicantId;
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
	public Double getCoApplicantValue() {
		return coApplicantValue;
	}
	public void setCoApplicantValue(Double coApplicantValue) {
		this.coApplicantValue = coApplicantValue;
	}
	public String getCoInstitution() {
		return coInstitution;
	}
	public void setCoInstitution(String coInstitution) {
		this.coInstitution = coInstitution;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	@Override
	public String toString() {
		return "Assets [id=" + id + ", customerId=" + customerId + ", coApplicantId=" + coApplicantId + ", type=" + type
				+ ", applicantValue=" + applicantValue + ", institution=" + institution + ", coApplicantValue="
				+ coApplicantValue + ", coInstitution=" + coInstitution + ", comments=" + comments + "]";
	}
	
}
