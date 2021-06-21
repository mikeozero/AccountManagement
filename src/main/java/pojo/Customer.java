package pojo;

import java.util.Date;
import java.util.List;


public class Customer {
	private String customerId;
	private String firstName;
	private String lastName;
	private String englishName;
	private String gender;
	private Integer birthYear;
	private Integer birthMonth;
	private Integer birthDay;
	private String sin;
	private String livingStatus;
	private String maritalStatus;
	private String citizenship;
	private String taxStatus;
	private String birthPlace;
//	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date liveInCanadaSince;
	private String email;
	private String cellPhone;
	private String homePhone;
	private String workPhone;
	private String currentHouseNumber;
	private String currentStreetName;
	private String currentAptNumber;
	private String currentCity;
	private String currentProvince;
	private String currentPostalCode;
	private Date currentSince;
	private String previousHouseNumber;
	private String previousStreetName;
	private String previousAptNumber;
	private String previousCity;
	private String previousProvince;
	private String previousPostalCode;
	private Date previousSince;
	private String idType;
	private String idNumber;
	private Date issueDate;
	private Date expiryDate;
	private String provinceOfIssue;
	private Date verificationDate;
	private Boolean declaredBankruptcyEver;
	private Date dateOfDischarge;
	private String spouseFirstName;
	private String spouseLastName;
	private Date spouseDOB;
	private String child1;
	private Integer child1Age;
	private String child2;
	private Integer child2Age;
	private String child3;
	private Integer child3Age;
	private String child4;
	private Integer child4Age;
	private String comments;
	private List<EmploymentInfos> employmentInfos;
	private List<BeneficiariesTrustee> beneficiariesTrustee;
	private List<Liabilities> liabilities;
	private List<Assets> assets;
	private List<Incomes> incomes;
	private List<NewOwnFunds> newOwnFunds;
	private List<BankLoans> bankLoans;
	private List<InvestmentTransfers> investmentTransfers;
	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEnglishName() {
		return englishName;
	}
	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Integer getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(Integer birthYear) {
		this.birthYear = birthYear;
	}
	public Integer getBirthMonth() {
		return birthMonth;
	}
	public void setBirthMonth(Integer birthMonth) {
		this.birthMonth = birthMonth;
	}
	public Integer getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Integer birthDay) {
		this.birthDay = birthDay;
	}
	public String getSin() {
		return sin;
	}
	public void setSin(String sin) {
		this.sin = sin;
	}
	public String getLivingStatus() {
		return livingStatus;
	}
	public void setLivingStatus(String livingStatus) {
		this.livingStatus = livingStatus;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getCitizenship() {
		return citizenship;
	}
	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}
	public String getTaxStatus() {
		return taxStatus;
	}
	public void setTaxStatus(String taxStatus) {
		this.taxStatus = taxStatus;
	}
	public String getBirthPlace() {
		return birthPlace;
	}
	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}
	public Date getLiveInCanadaSince() {
		return liveInCanadaSince;
	}
	public void setLiveInCanadaSince(Date liveInCanadaSince) {
		this.liveInCanadaSince = liveInCanadaSince;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}
	public String getHomePhone() {
		return homePhone;
	}
	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}
	public String getWorkPhone() {
		return workPhone;
	}
	public void setWorkPhone(String workPhone) {
		this.workPhone = workPhone;
	}
	public String getCurrentHouseNumber() {
		return currentHouseNumber;
	}
	public void setCurrentHouseNumber(String currentHouseNumber) {
		this.currentHouseNumber = currentHouseNumber;
	}
	public String getCurrentStreetName() {
		return currentStreetName;
	}
	public void setCurrentStreetName(String currentStreetName) {
		this.currentStreetName = currentStreetName;
	}
	public String getCurrentAptNumber() {
		return currentAptNumber;
	}
	public void setCurrentAptNumber(String currentAptNumber) {
		this.currentAptNumber = currentAptNumber;
	}
	public String getCurrentCity() {
		return currentCity;
	}
	public void setCurrentCity(String currentCity) {
		this.currentCity = currentCity;
	}
	public String getCurrentProvince() {
		return currentProvince;
	}
	public void setCurrentProvince(String currentProvince) {
		this.currentProvince = currentProvince;
	}
	public String getCurrentPostalCode() {
		return currentPostalCode;
	}
	public void setCurrentPostalCode(String currentPostalCode) {
		this.currentPostalCode = currentPostalCode;
	}
	public Date getCurrentSince() {
		return currentSince;
	}
	public void setCurrentSince(Date currentSince) {
		this.currentSince = currentSince;
	}
	public String getPreviousHouseNumber() {
		return previousHouseNumber;
	}
	public void setPreviousHouseNumber(String previousHouseNumber) {
		this.previousHouseNumber = previousHouseNumber;
	}
	public String getPreviousStreetName() {
		return previousStreetName;
	}
	public void setPreviousStreetName(String previousStreetName) {
		this.previousStreetName = previousStreetName;
	}
	public String getPreviousAptNumber() {
		return previousAptNumber;
	}
	public void setPreviousAptNumber(String previousAptNumber) {
		this.previousAptNumber = previousAptNumber;
	}
	public String getPreviousCity() {
		return previousCity;
	}
	public void setPreviousCity(String previousCity) {
		this.previousCity = previousCity;
	}
	public String getPreviousProvince() {
		return previousProvince;
	}
	public void setPreviousProvince(String previousProvince) {
		this.previousProvince = previousProvince;
	}
	public String getPreviousPostalCode() {
		return previousPostalCode;
	}
	public void setPreviousPostalCode(String previousPostalCode) {
		this.previousPostalCode = previousPostalCode;
	}
	public Date getPreviousSince() {
		return previousSince;
	}
	public void setPreviousSince(Date previousSince) {
		this.previousSince = previousSince;
	}
	public String getIdType() {
		return idType;
	}
	public void setIdType(String idType) {
		this.idType = idType;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	public Date getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	public String getProvinceOfIssue() {
		return provinceOfIssue;
	}
	public void setProvinceOfIssue(String provinceOfIssue) {
		this.provinceOfIssue = provinceOfIssue;
	}
	public Date getVerificationDate() {
		return verificationDate;
	}
	public void setVerificationDate(Date verificationDate) {
		this.verificationDate = verificationDate;
	}
	public Boolean getDeclaredBankruptcyEver() {
		return declaredBankruptcyEver;
	}
	public void setDeclaredBankruptcyEver(Boolean declaredBankruptcyEver) {
		this.declaredBankruptcyEver = declaredBankruptcyEver;
	}
	public Date getDateOfDischarge() {
		return dateOfDischarge;
	}
	public void setDateOfDischarge(Date dateOfDischarge) {
		this.dateOfDischarge = dateOfDischarge;
	}
	public String getSpouseFirstName() {
		return spouseFirstName;
	}
	public void setSpouseFirstName(String spouseFirstName) {
		this.spouseFirstName = spouseFirstName;
	}
	public String getSpouseLastName() {
		return spouseLastName;
	}
	public void setSpouseLastName(String spouseLastName) {
		this.spouseLastName = spouseLastName;
	}
	public Date getSpouseDOB() {
		return spouseDOB;
	}
	public void setSpouseDOB(Date spouseDOB) {
		this.spouseDOB = spouseDOB;
	}
	public String getChild1() {
		return child1;
	}
	public void setChild1(String child1) {
		this.child1 = child1;
	}
	public Integer getChild1Age() {
		return child1Age;
	}
	public void setChild1Age(Integer child1Age) {
		this.child1Age = child1Age;
	}
	public String getChild2() {
		return child2;
	}
	public void setChild2(String child2) {
		this.child2 = child2;
	}
	public Integer getChild2Age() {
		return child2Age;
	}
	public void setChild2Age(Integer child2Age) {
		this.child2Age = child2Age;
	}
	public String getChild3() {
		return child3;
	}
	public void setChild3(String child3) {
		this.child3 = child3;
	}
	public Integer getChild3Age() {
		return child3Age;
	}
	public void setChild3Age(Integer child3Age) {
		this.child3Age = child3Age;
	}
	public String getChild4() {
		return child4;
	}
	public void setChild4(String child4) {
		this.child4 = child4;
	}
	public Integer getChild4Age() {
		return child4Age;
	}
	public void setChild4Age(Integer child4Age) {
		this.child4Age = child4Age;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public List<EmploymentInfos> getEmploymentInfos() {
		return employmentInfos;
	}
	public void setEmploymentInfos(List<EmploymentInfos> employmentInfos) {
		this.employmentInfos = employmentInfos;
	}
	public List<BeneficiariesTrustee> getBeneficiariesTrustee() {
		return beneficiariesTrustee;
	}
	public void setBeneficiariesTrustee(List<BeneficiariesTrustee> beneficiariesTrustee) {
		this.beneficiariesTrustee = beneficiariesTrustee;
	}
	public List<Liabilities> getLiabilities() {
		return liabilities;
	}
	public void setLiabilities(List<Liabilities> liabilities) {
		this.liabilities = liabilities;
	}
	public List<Assets> getAssets() {
		return assets;
	}
	public void setAssets(List<Assets> assets) {
		this.assets = assets;
	}
	public List<Incomes> getIncomes() {
		return incomes;
	}
	public void setIncomes(List<Incomes> incomes) {
		this.incomes = incomes;
	}
	public List<NewOwnFunds> getNewOwnFunds() {
		return newOwnFunds;
	}
	public void setNewOwnFunds(List<NewOwnFunds> newOwnFunds) {
		this.newOwnFunds = newOwnFunds;
	}
	public List<BankLoans> getBankLoans() {
		return bankLoans;
	}
	public void setBankLoans(List<BankLoans> bankLoans) {
		this.bankLoans = bankLoans;
	}
	public List<InvestmentTransfers> getInvestmentTransfers() {
		return investmentTransfers;
	}
	public void setInvestmentTransfers(List<InvestmentTransfers> investmentTransfers) {
		this.investmentTransfers = investmentTransfers;
	}
	
	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", englishName=" + englishName + ", gender=" + gender + ", birthYear=" + birthYear + ", birthMonth="
				+ birthMonth + ", birthDay=" + birthDay + ", sin=" + sin + ", livingStatus=" + livingStatus
				+ ", maritalStatus=" + maritalStatus + ", citizenship=" + citizenship + ", taxStatus=" + taxStatus
				+ ", birthPlace=" + birthPlace + ", liveInCanadaSince=" + liveInCanadaSince + ", email=" + email
				+ ", cellPhone=" + cellPhone + ", homePhone=" + homePhone + ", workPhone=" + workPhone
				+ ", currentHouseNumber=" + currentHouseNumber + ", currentStreetName=" + currentStreetName
				+ ", currentAptNumber=" + currentAptNumber + ", currentCity=" + currentCity + ", currentProvince="
				+ currentProvince + ", currentPostalCode=" + currentPostalCode + ", currentSince=" + currentSince
				+ ", previousHouseNumber=" + previousHouseNumber + ", previousStreetName=" + previousStreetName
				+ ", previousAptNumber=" + previousAptNumber + ", previousCity=" + previousCity + ", previousProvince="
				+ previousProvince + ", previousPostalCode=" + previousPostalCode + ", previousSince=" + previousSince
				+ ", idType=" + idType + ", idNumber=" + idNumber + ", issueDate=" + issueDate + ", expiryDate="
				+ expiryDate + ", provinceOfIssue=" + provinceOfIssue + ", verificationDate=" + verificationDate
				+ ", declaredBankruptcyEver=" + declaredBankruptcyEver + ", dateOfDischarge=" + dateOfDischarge
				+ ", spouseFirstName=" + spouseFirstName + ", spouseLastName=" + spouseLastName + ", spouseDOB="
				+ spouseDOB + ", child1=" + child1 + ", child1Age=" + child1Age + ", child2=" + child2 + ", child2Age="
				+ child2Age + ", child3=" + child3 + ", child3Age=" + child3Age + ", child4=" + child4 + ", child4Age="
				+ child4Age + ", comments=" + comments + ", employmentInfos=" + employmentInfos
				+ ", beneficiariesTrustee=" + beneficiariesTrustee + ", liabilities=" + liabilities + ", assets="
				+ assets + ", incomes=" + incomes + ", newOwnFunds=" + newOwnFunds + ", bankLoans=" + bankLoans
				+ ", investmentTransfers=" + investmentTransfers + "]";
	}
	
}
