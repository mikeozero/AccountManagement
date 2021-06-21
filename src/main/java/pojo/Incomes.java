package pojo;

public class Incomes {
	private Integer id;
	private String customerId;
	private String type;
	private Double annual;
	private Double monthly;
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
	public Double getAnnual() {
		return annual;
	}
	public void setAnnual(Double annual) {
		this.annual = annual;
	}
	public Double getMonthly() {
		return monthly;
	}
	public void setMonthly(Double monthly) {
		this.monthly = monthly;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	@Override
	public String toString() {
		return "Incomes [id=" + id + ", customerId=" + customerId + ", type=" + type + ", annual=" + annual
				+ ", monthly=" + monthly + ", comments=" + comments + "]";
	}
	
}
