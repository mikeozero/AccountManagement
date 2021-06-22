<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add New Account</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/css/bootstrap.min.css" />
	<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>
		div{margin-top: 20px;}
		.red{background-color: red;color: white;}
		.deepblue{background-color: #1892B7;color: white;}
		.blue{background-color: lightblue;color: gray;}
		.gray{background-color: lightgray;}
		.yellow{background-color: yellow;color: gray;}
		.orange{background-color: #F8CBAD;}
		.green{background-color: #E2EFDA;}
		.purple{background-color: #B4C6E7;color: gray;}
		.beige{background-color: #FFF2CC;color: gray;}
		.lightgreen{background-color: #E2EFDA;color: gray;}
		.pink{background-color: #FCE4D6;color: gray;}
		td{height: 3.4375rem;text-align: center;table-layout: fixed;}
		table{width: 60%;table-layout: fixed;margin: 3.125rem auto;border: gray;font-size: 1.3125rem;font-weight: bold;box-shadow: 0.3125rem 0.3125rem 0.3125rem gray;}
		input{width: 94%;height: 92%;text-align: center;border: 0rem;}
		select{border: none;width: 95%;height: 88%;text-align-last: center;}
		img{width: 100%;}
		th{border: none;font-size: 1.125rem;font-weight: bold;}
		.title{font-size: 2rem;font-weight: bolder;color: steelblue;text-align: left;padding-left: 1.25rem;}
		.sub{font-size: 1.875rem;font-weight: bold;color: darkgoldenrod;text-align: right;padding-right: 0.625rem;}
		.tabfont{font-size: 1.5625rem;font-weight: 550;color: steelblue;}
		.goinfo {text-decoration: none;color: white;background-color: lightcoral;float: right;margin-right: 6.25rem;
			    border-radius: 0.3125rem;width: 9.375rem;height: 3.125rem;font-size: 1.3rem;
			    font-weight: bold;display: flex;align-items: center;justify-content: center;
			    margin-top: 1.25rem;box-shadow: 0.3125rem 0.3125rem 0.3125rem 0.0625rem lightgrey;}
	</style>
</head>
<body>
	<div style="width: 100%;"><h1 style="color: steelblue;padding-left: 1.875rem;font-weight: 550;">Add New Account</h2></div>
	<a class="goinfo" href="<%=path %>/searchrecord.action">Cancel</a>
	<div style="width: 100%;"  class="justify-content-center">
		<form action="<%=path %>/addaccount.action" method="post">
			<div class="tabs">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#personalInfo"><font class="tabfont">Personal Infomation</font></a></li>
					<li id="coapptab" style="display: none;"><a data-toggle="tab" href="#coApplicantInfo"><font class="tabfont">Co Applicant Info</font></a></li>
					<li><a data-toggle="tab" href="#assetsLiabilities"><font class="tabfont">Assets & Liabilities</font></a></li>
					<li><a data-toggle="tab" href="#accountInfo"><font class="tabfont">Account Infomation</font></a></li>
				</ul>
				<div class="tab-content">
					
					<!-- personalInfo -->
					<div id="personalInfo" class="tab-pane active">
						<div class="table-responsive">
							<table id="personaltb" border="1" cellspacing="0" cellpadding="0">
							    <tr>
							    	<th><img src="./images/Financial.png"></th>
							    	<th class="title" colspan="5">Financial</th>
							    	<th class="sub" colspan="6">Personal Information</th>
							    </tr>
								<tr><td class="deepblue" colspan="12">Agent Use Only</td></tr>
								<tr>
									<td class="deepblue">Agent Code</td>
									<td colspan="2"><input type="text" name="agentCode" id="agentcode"></td>
									<td class="deepblue">Enter Date</td>
									<td colspan="3"><input type="date" name="enterDate"></td>
									<td class="deepblue" colspan="2">Customer ID</td>
									<td colspan="3"><input type="text" name="customer.customerId"></td>
								</tr>
								<tr><td class="deepblue" colspan="12">Referral</td></tr>
								<tr>
									<td class="deepblue">First Name</td>
									<td colspan="2"><input type="text" class="upper" name="referrerFirstName"></td>
									<td class="deepblue">Last Name</td>
									<td colspan="2"><input type="text" class="upper" name="referrerLastName"></td>
									<td class="deepblue">Time</td>
									<td colspan="2"><input type="date" name="referralTime"></td>
									<td class="deepblue">ID</td>
									<td colspan="2"><input type="text" name="referrerId"></td>
								</tr>
								<tr>
									<td colspan="9" style="font-weight: bolder;">Part 1 - Personal Information</td>
									<td class="blue" colspan="2">Co Applicant</td>
									<td>
										<select name="hasCoApplicant">
											<option value="0"></option>
											<option value="1">Yes</option>
											<option value="0">No</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="blue">Last Name</td>
									<td colspan="2"><input type="text" class="upper" name="customer.lastName"></td>
									<td class="blue">First Name</td>
									<td colspan="3"><input type="text" class="upper" name="customer.firstName"></td>
									<td class="blue" colspan="2">English Name</td>
									<td colspan="3"><input type="text" class="upper" name="customer.englishName"></td>
								</tr>
								<tr>
									<td class="blue">Gender</td>
									<td>
										<input type="text" list="gender" name="customer.gender">
										<datalist id="gender">
											<option value="Male"></option>
											<option value ="Female"></option>
										</datalist>
									</td>
									<td class="blue">Birth Year</td>
									<td><input type="text" id="birthyear" name="customer.birthYear"></td>
									<td class="blue">Birth Month</td>
									<td>
										<select id="birthmonth" name="customer.birthMonth">
											<option value=""></option>
											<option value="1">Jan</option>
											<option value="2">Feb</option>
											<option value="3">Mar</option>
											<option value="4">Apr</option>
											<option value="5">May</option>
											<option value="6">Jun</option>
											<option value="7">Jul</option>
											<option value="8">Aug</option>
											<option value="9">Sep</option>
											<option value="10">Oct</option>
											<option value="11">Nov</option>
											<option value="12">Dec</option>
										</select>
									</td>
									<td class="blue">Birth Day</td>
									<td>
										<input type="text" list="days" id="birthday" name="customer.birthDay">
										<datalist id="days">
											<option value="01"></option>
											<option value="02"></option>
											<option value="03"></option>
											<option value="04"></option>
											<option value="05"></option>
											<option value="06"></option>
											<option value="07"></option>
											<option value="08"></option>
											<option value="09"></option>
											<option value="10"></option>
											<option value="11"></option>
											<option value="12"></option>
											<option value="13"></option>
											<option value="14"></option>
											<option value="15"></option>
											<option value="16"></option>
											<option value="17"></option>
											<option value="18"></option>
											<option value="19"></option>
											<option value="20"></option>
											<option value="21"></option>
											<option value="22"></option>
											<option value="23"></option>
											<option value="24"></option>
											<option value="25"></option>
											<option value="26"></option>
											<option value="27"></option>
											<option value="28"></option>
											<option value="29"></option>
											<option value="30"></option>
											<option value="31"></option>
										</datalist>
									</td>
									<td class="blue" colspan="2">S.I.N</td>
									<td colspan="2"><input id="sin1" type="text" name="customer.sin"></td>
								</tr>
								<tr>
									<td class="blue">Living Status</td>
									<td>
										<input type="text" list="lv" name="customer.livingStatus">
										<datalist id="lv">
											<option value="Owner"></option>
											<option value="Rent"></option>
											<option value="With Parnets"></option>
											<option value="With Others"></option>
											<option value="Other"></option>
										</datalist>
									</td>
									<td class="blue">Marital Status</td>
									<td>
										<input type="text" list="marital" name="customer.maritalStatus">
										<datalist id="marital">
											<option value="Married"></option>
											<option value="Single"></option>
											<option value="Divorce"></option>
											<option value="Separated"></option>
											<option value="Widowed"></option>
											<option value="Common Law"></option>
											<option value="Other"></option>
										</datalist>
									</td>
									<td class="blue" colspan="2">Citizenship</td>
									<td colspan="2">
										<input type="text" list="citizen" name="customer.citizenship">
										<datalist id="citizen">
											<option value="Canadian"></option>
											<option value="PR"></option>
											<option value="Chinese"></option>
											<option value="Other"></option>
										</datalist>
									</td>
									<td class="blue" colspan="2">Tax Status</td>
									<td colspan="2">
										<input type="text" list="tax" name="customer.taxStatus">
										<datalist id="tax">
											<option value="Canada"></option>
											<option value="U.S"></option>
											<option value="Both"></option>
											<option value="Other"></option>
										</datalist>
									</td>
								</tr>
								<tr>
									<td class="blue" colspan="2" style="color: red;">IA Trust Loan App Only</td>
									<td class="blue" colspan="2">Place of Birth<br><font style="font-size: 1.125rem;">(Country or Province)<font></td>
									<td colspan="2"><input type="text" class="upper" name="customer.birthPlace"></td>
									<td class="blue" colspan="2">Live in Canada<br><font style="font-size: 1.125rem;">Since</font></td>
									<td colspan="2">
										<input type="text" list="since" id="livesince" name="since">
										<datalist id="since">
											<option value="Date (mm/yyyy)"></option>
											<option value="Birth"></option>
										</datalist>
									</td>
									<td colspan="2"><input type="date" id="sincedate" name="customer.liveInCanadaSince"></td>
								</tr>
								<tr>
									<td class="blue">House Number</td>
									<td class="blue" colspan="3">Current Resident Street</td>
									<td class="blue">Apt#</td>
									<td class="blue" colspan="2">City</td>
									<td class="blue">Province</td>
									<td class="blue" colspan="2">Post Code</td>
									<td class="blue" colspan="2">Since</td>
								</tr>
								<tr>
									<td><input type="text" class="upper" name="customer.currentHouseNumber"></td>
									<td colspan="3"><input type="text" class="upper" name="customer.currentStreetName"></td>
									<td><input type="text" class="upper" name="customer.currentAptNumber"></td>
									<td colspan="2"><input type="text" class="upper" name="customer.currentCity"></td>
									<td>
										<input type="text" list="province" name="customer.currentProvince">
										<datalist id="province">
											<option value="AB"></option>
											<option value="BC"></option>
											<option value="ON"></option>
											<option value="NWT"></option>
											<option value="QC"></option>
											<option value="NU"></option>
											<option value="PEI"></option>
											<option value="NS"></option>
											<option value="NB"></option>
											<option value="NL"></option>
											<option value="YK"></option>
											<option value="MB"></option>
											<option value="SK"></option>
										</datalist>
									</td>
									<td colspan="2"><input type="text" class="upper" name="customer.currentPostalCode"></td>
									<td colspan="2"><input type="date" name="customer.currentSince"></td>
								</tr>
								<tr>
									<td class="blue">House Number</td>
									<td class="blue" colspan="3">Previous Street If Current < 2 Years</td>
									<td class="blue">Apt#</td>
									<td class="blue" colspan="2">City</td>
									<td class="blue">Province</td>
									<td class="blue" colspan="2">Post Code</td>
									<td class="blue" colspan="2">Since</td>
								</tr>
								<tr>
									<td><input type="text" class="upper" name="customer.previousHouseNumber"></td>
									<td colspan="3"><input type="text" class="upper" name="customer.previousStreetName"></td>
									<td><input type="text" class="upper" name="customer.previousAptNumber"></td>
									<td colspan="2"><input type="text" class="upper" name="customer.previousCity"></td>
									<td>
										<input type="text" list="province" name="customer.previousProvince">
									</td>
									<td colspan="2"><input type="text" class="upper" name="customer.previousPostalCode"></td>
									<td colspan="2"><input type="date" name="customer.previousSince"></td>
								</tr>
								<tr>
									<td class="blue" colspan="5">Email Address</td>
									<td class="blue" colspan="2">Cell Phone</td>
									<td class="blue" colspan="3">Home Phone</td>
									<td class="blue" colspan="2">Work Phone</td>
								</tr>
								<tr>
									<td colspan="5"><input type="email" class="upper" name="customer.email"></td>
									<td colspan="2"><input type="tel" name="customer.cellPhone"></td>
									<td colspan="3"><input type="tel" name="customer.homePhone"></td>
									<td colspan="2"><input type="tel" name="customer.workPhone"></td>
								</tr>
								<tr>
									<td class="blue" colspan="2">ID Type</td>
									<td class="blue" colspan="3">ID Number</td>
									<td class="blue" colspan="2">Issue Date<br>(mm/dd/yyyy)</td>
									<td class="blue" colspan="2">Expiry Date<br>(mm/dd/yyyy)</td>
									<td class="blue" colspan="3">Verification Date<br>(mm/dd/yyyy)</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="text" list="idtype" name="customer.idType">
										<datalist id="idtype">
											<option value="Provincial Driver's License"></option>
											<option value="Provincial Photo ID"></option>
											<option value="Passport"></option>
											<option value="PR Card"></option>
											<option value="Other"></option>
										</datalist>
									</td>
									<td colspan="3"><input type="text" class="upper" name="customer.idNumber"></td>
									<td colspan="2"><input type="date" name="customer.issueDate"></td>
									<td colspan="2"><input type="date" name="customer.expiryDate"></td>
									<td colspan="3"><input type="date" name="customer.verificationDate"></td>
								</tr>
								<tr>
									<td class="blue" colspan="3">ID Province of Issue</td>
									<td colspan="2">
										<input type="text" list="province" name="customer.provinceOfIssue">
									</td>
									<td class="blue" colspan="2">Comments</td>
									<td colspan="5"><input type="text" class="upper" name="customer.comments"></td>
								</tr>
								<tr>
									<td class="blue" colspan="4">Have you previously Declared Bankruptcy?</td>
									<td>
										<select name="customer.declaredBankruptcyEver">
											<option value="0"></option>
											<option value="1">Yes</option>
											<option value="0">No</option>
										</select>
									</td>
									<td class="blue" colspan="4">If "Yes", Date of Discharge</td>
									<td colspan="3"><input type="date" name="customer.dateOfDischarge"></td>
								</tr>
								<tr><td colspan="12" style="font-weight: bolder;">Part 2 Family Members</td></tr>				
								<tr>
									<td class="blue">Spouse</td>
									<td class="blue">First Name</td>
									<td colspan="2"><input type="text" class="upper" name="customer.spouseFirstName"></td>
									<td class="blue" colspan="2">Last Name</td>
									<td colspan="2"><input type="text" class="upper" name="customer.spouseLastName"></td>
									<td class="blue" colspan="2">DOB<br><font style="font-size: 1.125rem;">(mm/dd/yyyy)</td>
									<td colspan="2"><input type="date" name="customer.spouseDOB"></td>
								</tr>
								<tr>
									<td class="blue">Child 1</td>
									<td class="blue">Age</td>
									<td class="blue">Child 2</td>
									<td class="blue">Age</td>
									<td class="blue" colspan="2">Child 3</td>
									<td class="blue" colspan="2">Age</td>
									<td class="blue" colspan="2">Child 4</td>
									<td class="blue" colspan="2">Age</td>
								</tr>
								<tr>
									<td>
										<input type="text" list="childtype" name="customer.child1">
										<datalist id="childtype">
											<option value="Son"></option>
											<option value="Daughter"></option>
											<option value="Adopted"></option>
											<option value="Dependent"></option>
											<option value="Other"></option>
										</datalist>
									</td>
									<td><input type="number" min="1" max="120" name="customer.child1Age"></td>
									<td><input type="text" list="childtype" name="customer.child2"></td>
									<td><input type="number" min="1" max="120" name="customer.child2Age"></td>
									<td colspan="2"><input type="text" list="childtype" name="customer.child3"></td>
									<td colspan="2"><input type="number" min="1" max="120" name="customer.child3Age"></td>
									<td colspan="2"><input type="text" list="childtype" name="customer.child4"></td>
									<td colspan="2"><input type="number" min="1" max="120" name="customer.child4Age"></td>
								</tr>
								<tr><td colspan="12" style="font-weight: bolder;">Part 3 Employment Info</td></tr>
								<tr>
									<td class="gray" colspan="2"></td>
									<td class="gray" colspan="5">Current or Most Recent (>2 Years)<input type="hidden" name="customer.employmentInfos[0].type" value="Current or Most Recent (>2 Years)"></td>
									<td class="gray" colspan="5">Prior - if Current < 2 Years<input type="hidden" name="customer.employmentInfos[1].type" value="Prior - if Current < 2 Years"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Employment Status</td>
									<td colspan="5">
										<input type="text" list="employstat" name="customer.employmentInfos[0].employmentStatus">
										<datalist id="employstat">
											<option value="Employed"></option>
											<option value="Self-Employed"></option>
											<option value="Retired"></option>
											<option value="Unemployed"></option>
											<option value="Other"></option>
										</datalist>
									</td>
									<td colspan="5"><input type="text" list="employstat" name="customer.employmentInfos[1].employmentStatus"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Annual Income</td>
									<td colspan="5"><input type="text" name="customer.employmentInfos[0].annualIncome"></td>
									<td colspan="5"><input type="text" name="customer.employmentInfos[1].annualIncome"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Employer Name</td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[0].employerName"></td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[1].employerName"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2" style="font-size: 1.125rem;">
										Business Address <br><font style="font-size: 0.875rem;">(Street, City, Province, Post Code)</font>
									</td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[0].businessAddress"></td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[1].businessAddress"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Duration</td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[0].duration"></td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[1].duration"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Industry</td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[0].industry"></td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[1].industry"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Occupation</td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[0].occupation"></td>
									<td colspan="5"><input type="text" class="upper" name="customer.employmentInfos[1].occupation"></td>
								</tr>
								<tr><td colspan="12" style="font-weight: bolder;">Part 4 Beneficiaries & Trustee</td></tr>
								<tr>
									<td class="yellow" colspan="2">Type</td>
									<td class="yellow">Last Name</td>
									<td class="yellow">First Name</td>
									<td class="yellow">Relationship</td>
									<td class="yellow">Gender</td>
									<td class="yellow">Type</td>
									<td class="yellow" colspan="2">DOB<br><font style="font-size: 1.125rem;">(mm/dd/yyyy)</td>
									<td class="yellow">Share %</td>
									<td class="yellow" colspan="2" style="color: red;">SIN for RESP Only</td>
								</tr>
								<tr style="font-size: 1.125rem;">
									<td colspan="2">
										<input type="text" list="bttype" name="customer.beneficiariesTrustee[0].type">
										<datalist id="bttype">
											<option value="Beneficiary"></option>
											<option value="Trustee of Minor"></option>
										</datalist>
									</td>
									<td><input type="text" class="upper" name="customer.beneficiariesTrustee[0].lastName"></td>
									<td><input type="text" class="upper" name="customer.beneficiariesTrustee[0].firstName"></td>
									<td>
										<input type="text" list="relationship" name="customer.beneficiariesTrustee[0].relationship">
										<datalist id="relationship">
											<option value="Spouse"></option>
											<option value="Parent"></option>
											<option value="Son"></option>
											<option value="Daughter"></option>
											<option value="Sibling"></option>
											<option value="Relative"></option>
											<option value="Friend"></option>
											<option value="Other"></option>
										</datalist>
									</td>
									<td>
										<input type="text" list="gender" name="customer.beneficiariesTrustee[0].gender">
									</td>
									<td>
										<input type="text" list="bnftype" name="customer.beneficiariesTrustee[0].benificiaryType">
										<datalist id="bnftype">
											<option value="Rev."></option>
											<option value="Irrev."></option>
										</datalist>
									</td>
									<td colspan="2"><input type="date" name="customer.beneficiariesTrustee[0].dob"></td>
									<td><input type="text" name="customer.beneficiariesTrustee[0].sharePercent"></td>
									<td class="block0" colspan="2"><input type="text" name="customer.beneficiariesTrustee[0].sinForRESPOnly" style="width: 80%;"><img class="sign0" src="./images/plus.jpg" onclick="addrow0()" style="display: none;width: 1.875rem;height: 1.875rem;position: relative;right: -1.9375rem;bottom: -0.625rem;"><img class="sign0" src="./images/minus.jpg" onclick="delrow0()" style="display: none;width: 1.875rem;height: 1.875rem;position: relative;right: -1.9375rem;bottom: -0.625rem;"></td>
								</tr>

							</table>
						</div>
					</div>
					
					<!-- Co Applicant Info -->
					<div id="coApplicantInfo" class="tab-pane">
						<div class="table-responsive">
							<table border="1" cellspacing="0" cellpadding="0">
							    <tr>
							    	<th><img src="./images/Financial.png"></th>
							    	<th class="title" colspan="5">Financial</th>
							    	<th class="sub" colspan="6">Co Applicant Information</th>
							    </tr>
								<tr><td class="deepblue" colspan="12">Agent Use Only</td></tr>
								<tr>
									<td class="deepblue">Agent Code</td>
									<td colspan="2"><input type="text" readonly="readonly"></td>
									<td class="deepblue">Enter Date</td>
									<td colspan="3"><input type="text" readonly="readonly"></td>
									<td class="deepblue" colspan="2">Customer ID</td>
									<td colspan="3"><input type="text" name="coApplicant.customerId"></td>
								</tr>
								<tr><td class="deepblue" colspan="12">Referral</td></tr>
								<tr>
									<td class="deepblue">First Name</td>
									<td colspan="2"><input type="text" readonly="readonly"></td>
									<td class="deepblue">Last Name</td>
									<td colspan="2"><input type="text" readonly="readonly"></td>
									<td class="deepblue">Time</td>
									<td colspan="2"><input type="text" readonly="readonly"></td>
									<td class="deepblue">ID</td>
									<td colspan="2"><input type="text" readonly="readonly"></td>
								</tr>
								<tr>
									<td colspan="12" style="font-weight: bolder;">Part 1 - Personal Information (Co Applicant)</td>
								</tr>
								<tr>
									<td class="blue">Last Name</td>
									<td colspan="2"><input type="text" class="upper" name="coApplicant.lastName"></td>
									<td class="blue">First Name</td>
									<td colspan="3"><input type="text" class="upper" name="coApplicant.firstName"></td>
									<td class="blue" colspan="2">English Name</td>
									<td colspan="3"><input type="text" class="upper" name="coApplicant.englishName"></td>
								</tr>
								<tr>
									<td class="blue">Gender</td>
									<td>
										<input type="text" list="gender" name="coApplicant.gender">
									</td>
									<td class="blue">Birth Year</td>
									<td><input type="text" name="coApplicant.birthYear"></td>
									<td class="blue">Birth Month</td>
									<td>
										<select name="coApplicant.birthMonth">
											<option value=""></option>
											<option value="1">Jan</option>
											<option value="2">Feb</option>
											<option value="3">Mar</option>
											<option value="4">Apr</option>
											<option value="5">May</option>
											<option value="6">Jun</option>
											<option value="7">Jul</option>
											<option value="8">Aug</option>
											<option value="9">Sep</option>
											<option value="10">Oct</option>
											<option value="11">Nov</option>
											<option value="12">Dec</option>
										</select>
									</td>
									<td class="blue">Birth Day</td>
									<td>
										<input type="text" list="days" name="coApplicant.birthDay">
									</td>
									<td class="blue" colspan="2">S.I.N</td>
									<td colspan="2"><input id="sin2" type="text" name="coApplicant.sin"></td>
								</tr>
								<tr>
									<td class="blue">Living Status</td>
									<td>
										<input type="text" list="lv" name="coApplicant.livingStatus">
									</td>
									<td class="blue">Marital Status</td>
									<td>
										<input type="text" list="marital" name="coApplicant.maritalStatus">
									</td>
									<td class="blue" colspan="2">Citizenship</td>
									<td colspan="2">
										<input type="text" list="citizen" name="coApplicant.citizenship">
									</td>
									<td class="blue" colspan="2">Tax Status</td>
									<td colspan="2">
										<input type="text" list="tax" name="coApplicant.taxStatus">
									</td>
								</tr>
								<tr>
									<td class="blue">House Number</td>
									<td class="blue" colspan="3">Current Resident Street</td>
									<td class="blue">Apt#</td>
									<td class="blue" colspan="2">City</td>
									<td class="blue">Province</td>
									<td class="blue" colspan="2">Post Code</td>
									<td class="blue" colspan="2">Since</td>
								</tr>
								<tr>
									<td><input type="text" class="upper" name="coApplicant.currentHouseNumber"></td>
									<td colspan="3"><input type="text" class="upper" name="coApplicant.currentStreetName"></td>
									<td><input type="text" class="upper" name="coApplicant.currentAptNumber"></td>
									<td colspan="2"><input type="text" class="upper" name="coApplicant.currentCity"></td>
									<td>
										<input type="text" list="province" name="coApplicant.currentProvince">
									</td>
									<td colspan="2"><input type="text" class="upper" name="coApplicant.currentPostalCode"></td>
									<td colspan="2"><input type="date" name="coApplicant.currentSince"></td>
								</tr>
								<tr>
									<td class="blue">House Number</td>
									<td class="blue" colspan="3">Previous Street If Current < 2 Years</td>
									<td class="blue">Apt#</td>
									<td class="blue" colspan="2">City</td>
									<td class="blue">Province</td>
									<td class="blue" colspan="2">Post Code</td>
									<td class="blue" colspan="2">Since</td>
								</tr>
								<tr>
									<td><input type="text" class="upper" name="coApplicant.previousHouseNumber"></td>
									<td colspan="3"><input type="text" class="upper" name="coApplicant.previousStreetName"></td>
									<td><input type="text" class="upper" name="coApplicant.previousAptNumber"></td>
									<td colspan="2"><input type="text" class="upper" name="coApplicant.previousCity"></td>
									<td>
										<input type="text" list="province" name="coApplicant.previousProvince">
									</td>
									<td colspan="2"><input type="text" class="upper" name="coApplicant.previousPostalCode"></td>
									<td colspan="2"><input type="date" name="coApplicant.previousSince"></td>
								</tr>
								<tr>
									<td class="blue" colspan="5">Email Address</td>
									<td class="blue" colspan="2">Cell Phone</td>
									<td class="blue" colspan="3">Home Phone</td>
									<td class="blue" colspan="2">Work Phone</td>
								</tr>
								<tr>
									<td colspan="5"><input type="email" class="upper" name="coApplicant.email"></td>
									<td colspan="2"><input type="tel" name="coApplicant.cellPhone"></td>
									<td colspan="3"><input type="tel" name="coApplicant.homePhone"></td>
									<td colspan="2"><input type="tel" name="coApplicant.workPhone"></td>
								</tr>
								<tr>
									<td class="blue" colspan="2">ID Type</td>
									<td class="blue" colspan="3">ID Number</td>
									<td class="blue" colspan="2">Issue Date<br>(mm/dd/yyyy)</td>
									<td class="blue" colspan="2">Expiry Date<br>(mm/dd/yyyy)</td>
									<td class="blue" colspan="3">Verification Date<br>(mm/dd/yyyy)</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="text" list="idtype" name="coApplicant.idType">
									</td>
									<td colspan="3"><input type="text" class="upper" name="coApplicant.idNumber"></td>
									<td colspan="2"><input type="date" name="coApplicant.issueDate"></td>
									<td colspan="2"><input type="date" name="coApplicant.expiryDate"></td>
									<td colspan="3"><input type="date" name="coApplicant.verificationDate"></td>
								</tr>
								<tr>
									<td class="blue" colspan="3">ID Province of Issue</td>
									<td colspan="2">
										<input type="text" list="province" name="coApplicant.provinceOfIssue">
									</td>
									<td class="blue" colspan="7"></td>
								</tr>
								<tr>
									<td class="blue" colspan="4">Have you previously Declared Bankruptcy?</td>
									<td>
										<select name="coApplicant.declaredBankruptcyEver">
											<option value="0"></option>
											<option value="1">Yes</option>
											<option value="0">No</option>
										</select>
									</td>
									<td class="blue" colspan="4">If "Yes", Date of Discharge</td>
									<td colspan="3"><input type="date" name="coApplicant.dateOfDischarge"></td>
								</tr>
								<tr>
									<td class="blue">Comments</td>
									<td colspan="11"><input type="text" class="upper" name="coApplicant.comments"></td>
								</tr>

								<tr><td colspan="12" style="font-weight: bolder;">Part 2 Employment Info</td></tr>
								<tr>
									<td class="gray" colspan="2"></td>
									<td class="gray" colspan="5">Current or Most Recent (>2 Years)<input type="hidden" name="coApplicant.employmentInfos[0].type" value="Current or Most Recent (>2 Years)"></td>
									<td class="gray" colspan="5">Prior - if Current < 2 Years<input type="hidden" name="coApplicant.employmentInfos[1].type" value="Prior - if Current < 2 Years"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Employment Status</td>
									<td colspan="5">
										<input type="text" list="employstat" name="coApplicant.employmentInfos[0].employmentStatus">
									</td>
									<td colspan="5"><input type="text" list="employstat" name="coApplicant.employmentInfos[1].employmentStatus"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Annual Income</td>
									<td colspan="5"><input type="text" name="coApplicant.employmentInfos[0].annualIncome"></td>
									<td colspan="5"><input type="text" name="coApplicant.employmentInfos[1].annualIncome"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Employer Name</td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[0].employerName"></td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[1].employerName"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2" style="font-size: 1.125rem;">
										Business Address <br><font style="font-size: 0.875rem;">(Street, City, Province, Post Code)</font>
									</td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[0].businessAddress"></td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[1].businessAddress"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Duration</td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[0].duration"></td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[1].duration"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Industry</td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[0].industry"></td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[1].industry"></td>
								</tr>
								<tr>
									<td class="gray" colspan="2">Occupation</td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[0].occupation"></td>
									<td colspan="5"><input type="text" class="upper" name="coApplicant.employmentInfos[1].occupation"></td>
								</tr>
							</table>
						</div>
					</div>
					
					<!-- Assets & Liabilities -->
					<div id="assetsLiabilities" class="tab-pane">
						<div class="table-responsive">
							<!-- Liabilities -->
							<table id="table1" border="1" cellspacing="0" cellpadding="0">
							    <tr>
							    	<th><img src="./images/Financial.png"></th>
							    	<th class="title" colspan="3">Financial</th>
							    	<th class="sub" colspan="3">Assets & Liabilities</th>
							    </tr>
								<tr>
									<td class="orange" rowspan="2">Liabilities</td>
									<td class="orange" rowspan="2">Market Value</td>
									<td class="orange" rowspan="2">Liability Balance</td>
									<td class="orange" rowspan="2">Institution</td>
									<td class="blue" colspan="3">Monthly Payment</td>
								</tr>
								<tr>
									<td class="blue">Liability</td>
									<td class="blue">Property Tax</td>
									<td class="blue">Condo Fee</td>
								</tr>
								<tr>
									<td style="font-size: 1.125rem;">
										<input type="text" list="liabilitytype" name="customer.liabilities[0].type">
										<datalist id="liabilitytype">
											<option value="Principal Residence"></option>
											<option value="Other Real Estate"></option>
											<option value="Rent"></option>
											<option value="Line of Credit"></option>
											<option value="Vehicle"></option>
											<option value="Personal Loan"></option>
											<option value="Student Loan"></option>
											<option value="Other Debts"></option>
											<option value="Investment Loan"></option>
										</datalist>
									</td>
									<td><input class="mv" type="text" name="customer.liabilities[0].marketValue"></td>
									<td><input class="labl" type="text" name="customer.liabilities[0].liabilityBalance"></td>
									<td><input type="text" class="upper" name="customer.liabilities[0].institution"></td>
									<td><input class="mlb" type="text" name="customer.liabilities[0].monthlyLiability"></td>
									<td><input class="mpt" type="text" name="customer.liabilities[0].monthlyPropertyTax"></td>
									<td class="block1"><input class="mcf" type="text" name="customer.liabilities[0].monthlyCondoFee" style="width: 75%;"><img class="sign1" src="./images/plus.jpg" onclick="addrow1()" style="display: none;width: 1.875rem;height: 1.875rem;position: relative;right: -1.9375rem;bottom: -0.625rem;"><img class="sign1" src="./images/minus.jpg" onclick="delrow1()" style="display: none;width: 1.875rem;height: 1.875rem;position: relative;right: -1.9375rem;bottom: -0.625rem;"></td>
								</tr>
							</table>
							<!-- Assets -->
							<table id="table2" border="1" cellspacing="0" cellpadding="0">
								<tr>
									<td class="green">Assets</td>
									<td class="green" colspan="2">Value (Applicant)</td>
									<td class="green">Institution</td>
									<td class="green" colspan="2">Value (Co-Applicant)</td>
									<td class="green">Institution</td>
								</tr>
								<tr>
									<td style="font-size: 1.125rem;">
										<input type="text" list="assettype" name="customer.assets[0].type">
										<datalist id="assettype">
											<option value="TFSA"></option>
											<option value="RRSP"></option>
											<option value="Group RRSP"></option>
											<option value="Spousal RRSP"></option>
											<option value="RESP"></option>
											<option value="Mutual Funds"></option>
											<option value="GIC"></option>
											<option value="Stocks"></option>
											<option value="Checking Account"></option>
											<option value="Saving Account"></option>
											<option value="Other Assets"></option>
										</datalist>
									</td>
									<td colspan="2"><input class="av" type="text" name="customer.assets[0].applicantValue"></td>
									<td><input type="text" class="upper" name="customer.assets[0].institution"></td>
									<td colspan="2"><input class="cav" type="text" name="customer.assets[0].coApplicantValue"></td>
									<td class="block2"><input type="text" class="upper" name="customer.assets[0].coInstitution" style="width: 70%;"><img class="sign2" src="./images/plus.jpg" onclick="addrow2()" style="display: none;width: 1.875rem;height: 1.875rem;position: relative;right: -1.9375rem;bottom: -0.625rem;"><img class="sign2" src="./images/minus.jpg" onclick="delrow2()" style="display: none;width: 1.875rem;height: 1.875rem;position: relative;right: -1.9375rem;bottom: -0.625rem;"></td>
								</tr>
							</table>
							<!-- Incomes -->
							<table id="table3"  border="1" cellspacing="0" cellpadding="0">
								<tr>
									<td class="gray">Incomes</td>
									<td class="gray" colspan="3">Annual</td>
									<td class="gray" colspan="3">Monthly</td>
								</tr>
								<tr>
									<td style="font-size: 1.125rem;">
										<input type="text" list="incometype" name="customer.incomes[0].type">
										<datalist id="incometype">
											<option value="Employment Income"></option>
											<option value="Rental Income"></option>
											<option value="Commissions"></option>
											<option value="Dividend"></option>
											<option value="Bonus"></option>
											<option value="Other Incomes"></option>
										</datalist>
									</td>
									<td colspan="3"><input class="annualincome" type="text" name="customer.incomes[0].annual"></td>
									<td colspan="3" class="block3">
										<input type="text" name="customer.incomes[0].monthly" readonly="readonly" style="width: 90%;"><img class="sign3" src="./images/plus.jpg" onclick="addrow3()" style="display: none;width: 1.875rem;height: 1.875rem;position: relative;right: -1.9375rem;bottom: -0.625rem;"><img class="sign3" src="./images/minus.jpg" onclick="delrow3()" style="display: none;width: 1.875rem;height: 1.875rem;position: relative;right: -1.9375rem;bottom: -0.625rem;">
									</td>
								</tr>
							</table>
							<table border="1" cellspacing="0" cellpadding="0">
								<tr style="background-color: darkcyan;color: white;font-size: 1.75rem;">
									<td>Net Worth:</td>
									<td id="networth" colspan="2"></td>
									<td>TDSR:</td>
									<td id="tdsr" colspan="2"></td>
									<td id="approve">Not Approve</td>
								</tr>
								<tr>
									<td class="blue" style="color: red;font-size: 1.5rem;font-weight: bold;">Comments</td>
									<td colspan="6"><input type="text" class="upper" name="comments"></td>
								</tr>
							</table>
						</div>
					</div>
					
					<!-- Account Infomation -->
					<div id="accountInfo" class="tab-pane">
						<div class="table-responsive">
							<table style="box-shadow: 0rem 0rem 0rem white;">
							<tr>
								<th><img src="./images/Financial.png"></th>
								<th class="title" colspan="3">Financial</th>
								<th class="sub" colspan="3">Account Infomation</th>
							</tr>
							</table>
							<!-- New Own Funds -->
							<div id="tbnof" style="width: 100%;">
								<table border="1" cellspacing="0" cellpadding="0">
									<tr>
										<td colspan="8" style="font-weight: bolder;font-size: 20px;background-color: #FFF2CC;">New Own Funds</td>
										<td style="background-color: gray;color: white;">Completed</td>
									</tr>
									<tr>
										<td class="purple">Apply Year</td>
										<td>
											<input type="text" list="years" name="customer.newOwnFunds[0].applyYear">
											<datalist id="years">
												<option value="2020"></option>
												<option value="2021"></option>
												<option value="2022"></option>
												<option value="2023"></option>
												<option value="2024"></option>
												<option value="2025"></option>
												<option value="2026"></option>
												<option value="2027"></option>
												<option value="2028"></option>
												<option value="2029"></option>
											</datalist>
										</td>
										<td class="purple">Apply Month</td>
										<td>
											<select name="customer.newOwnFunds[0].applyMonth">
												<option value=""></option>
												<option value="1">Jan</option>
												<option value="2">Feb</option>
												<option value="3">Mar</option>
												<option value="4">Apr</option>
												<option value="5">May</option>
												<option value="6">Jun</option>
												<option value="7">Jul</option>
												<option value="8">Aug</option>
												<option value="9">Sep</option>
												<option value="10">Oct</option>
												<option value="11">Nov</option>
												<option value="12">Dec</option>
											</select>
										</td>
										<td class="purple">Apply Day</td>
										<td><input type="text" list="days" name="customer.newOwnFunds[0].applyDay"></td>
										<td class="purple">Apply Amount</td>
										<td><input type="text" name="customer.newOwnFunds[0].applyAmount"></td>
										<td>
											<select name="customer.newOwnFunds[0].completed">
												<option value="0"></option>
												<option value="1">x</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="purple">Account Type</td>
										<td>
											<input type="text" list="accounttype" name="customer.newOwnFunds[0].accountType">
											<datalist id="accounttype">
												<option value="Non-Reg"></option>
												<option value="TFSA"></option>
												<option value="RRSP"></option>
												<option value="Spousal RRSP"></option>
												<option value="LRSP"></option>
												<option value="LIRA"></option>
												<option value="RESP"></option>
												<option value="Other"></option>
											</datalist>
										</td>
										<td class="purple">Investment to</td>
										<td>
											<input type="text" list="investto" name="customer.newOwnFunds[0].investmentTo">
											<datalist id="investto">
												<option value="IA"></option>
												<option value="ML"></option>
												<option value="CL"></option>
											</datalist>
										</td>
										<td class="purple">Pay Method</td>
										<td>
											<input type="text" list="paymethod" name="customer.newOwnFunds[0].payMethod">
											<datalist id="paymethod">
												<option value="Personal Cheque"></option>
												<option value="Void Cheque"></option>
												<option value="Direct Deposit"></option>
											</datalist>
										</td>
										<td class="purple">Inv. Instruction</td>
										<td>
											<input type="text" list="invinstruction" name="customer.newOwnFunds[0].invInstruction">
											<datalist id="invinstruction">
												<option value="One-time PAD"></option>
												<option value="Regular PAD"></option>
											</datalist>
										</td>
										<td rowspan="11" class="blocktb1"><img class="signtb1" src="./images/plus.jpg" onclick="addtb1()" style="display: none;width: 2.5rem;height: 2.5rem;position: relative;right: -5rem;bottom: -17rem;"><img class="signtb1" src="./images/minus.jpg" onclick="deltb1()" style="display: none;width: 2.5rem;height: 2.5rem;position: relative;right: -5rem;bottom: -17rem;"></td>
									</tr>
									<tr>
										<td class="purple">One-time PAD Date</td>
										<td><input type="date" name="customer.newOwnFunds[0].oneTimePADDate"></td>
										<td class="purple">Account #:</td>
										<td><input type="text" name="customer.newOwnFunds[0].accountNumber"></td>
										<td class="purple">Transit #:</td>
										<td><input type="text" name="customer.newOwnFunds[0].transitNumber"></td>
										<td class="purple">Institution #:</td>
										<td><input type="text" name="customer.newOwnFunds[0].institutionNumber"></td>
									</tr>
									<tr>
										<td class="purple">Institution Name</td>
										<td colspan="2"><input type="text" class="upper" name="customer.newOwnFunds[0].institutionName"></td>
										<td class="purple" colspan="2">Name of Account Owner</td>
										<td colspan="3"><input type="text" class="upper" name="customer.newOwnFunds[0].nameOfAccountOwner"></td>
									</tr>
									<tr>
										<td class="purple">Regular PAD 1st Date</td>
										<td><input type="date" name="customer.newOwnFunds[0].regularPAD1stDate"></td>
										<td class="purple">Frequency</td>
										<td>
											<input type="text" list="frequency" name="customer.newOwnFunds[0].frequency">
											<datalist id="frequency">
												<option value="Monthly"></option>
												<option value="Last Day"></option>
												<option value="Weekly"></option>
												<option value="Bi-Weekly"></option>
											</datalist>
										</td>
										<td class="purple">Day</td>
										<td>
											<input type="text" list="day" name="customer.newOwnFunds[0].day">
											<datalist id="day">
												<option value="Monday"></option>
												<option value="Tuesday"></option>
												<option value="Wednesday"></option>
												<option value="Thursday"></option>
												<option value="Friday"></option>
												<option value="1"></option>
												<option value="2"></option>
												<option value="3"></option>
												<option value="4"></option>
												<option value="5"></option>
												<option value="6"></option>
												<option value="7"></option>
												<option value="8"></option>
												<option value="9"></option>
												<option value="10"></option>
												<option value="11"></option>
												<option value="12"></option>
												<option value="13"></option>
												<option value="14"></option>
												<option value="15"></option>
												<option value="16"></option>
												<option value="17"></option>
												<option value="18"></option>
												<option value="19"></option>
												<option value="20"></option>
												<option value="21"></option>
												<option value="22"></option>
												<option value="23"></option>
												<option value="24"></option>
												<option value="25"></option>
												<option value="26"></option>
												<option value="27"></option>
												<option value="28"></option>
											</datalist>
										</td>
										<td class="purple">Sales Charge</td>
										<td>
											<input type="text" list="salescharge" name="customer.newOwnFunds[0].salesCharge">
											<datalist id="salescharge">
												<option value="DSC"></option>
												<option value="CB5"></option>
												<option value="NSC"></option>
												<option value="FEL"></option>
												<option value="LL"></option>
												<option value="Back-End"></option>
											</datalist>
										</td>
									</tr>
									<tr>
										<td class="beige">Settle Year</td>
										<td><input type="text" list="years" name="customer.newOwnFunds[0].settleYear"></td>
										<td class="beige">Settle Month</td>
										<td>
											<select name="customer.newOwnFunds[0].settleMonth">
												<option value=""></option>
												<option value="1">Jan</option>
												<option value="2">Feb</option>
												<option value="3">Mar</option>
												<option value="4">Apr</option>
												<option value="5">May</option>
												<option value="6">Jun</option>
												<option value="7">Jul</option>
												<option value="8">Aug</option>
												<option value="9">Sep</option>
												<option value="10">Oct</option>
												<option value="11">Nov</option>
												<option value="12">Dec</option>
											</select>
										</td>
										<td class="beige">Settle Day</td>
										<td><input type="text" list="days" name="customer.newOwnFunds[0].settleDay"></td>
										<td class="beige">Settle Week</td>
										<td>
											<input type="text" list="weeks" name="customer.newOwnFunds[0].settleWeek">
											<datalist id="weeks">
												<option value="Week 1"></option>
												<option value="Week 2"></option>
												<option value="Week 3"></option>
												<option value="Week 4"></option>
												<option value="Week 5"></option>
												<option value="Week 6"></option>
											</datalist>
										</td>
									</tr>
									<tr>
										<td class="beige">Contract No.</td>
										<td colspan="2"><input type="text" class="upper" name="customer.newOwnFunds[0].contractNo"></td>
										<td class="beige">Settle Amount</td>
										<td><input type="text" name="customer.newOwnFunds[0].settleAmount"></td>
										<td class="beige">Result</td>
										<td colspan="2">
											<input type="text" list="result" name="customer.newOwnFunds[0].result">
											<datalist id="result">
												<option value="Settle"></option>
												<option value="Decline"></option>
												<option value="TDSR Decline"></option>
												<option value="Credit Decline"></option>
												<option value="Cancel"></option>
												<option value="AI Processing"></option>
												<option value="Bank Processing"></option>
												<option value="INV Processing"></option>
												<option value="Switch"></option>
												<option value="Withdrawl"></option>
											</datalist>
										</td>
									</tr>
									<tr>
										<td class="beige">Referral Fee</td>
										<td><input type="text" name="customer.newOwnFunds[0].referralFee"></td>
										<td class="beige">Comments</td>
										<td  colspan="5"><input type="text" class="upper" name="customer.newOwnFunds[0].comments"></td>
									</tr>
									<tr>
										<td class="beige">Fund 1 Code</td>
										<td class="beige">Volumn</td>
										<td class="beige">Fund 2 Code</td>
										<td class="beige">Volumn</td>
										<td class="beige">Fund 3 Code</td>
										<td class="beige">Volumn</td>
										<td class="beige">Fund 4 Code</td>
										<td class="beige">Volumn</td>
									</tr>
									<tr>
										<td>
											<input type="text" list="fundcode" name="customer.newOwnFunds[0].fund1Code">
											<datalist id="fundcode">
												<option value="46750"></option>
												<option value="46753"></option>
												<option value="46754"></option>
												<option value="47300"></option>
												<option value="47303"></option>
												<option value="47304"></option>
												<option value="41030"></option>
												<option value="41033"></option>
												<option value="41034"></option>
												<option value="47850"></option>
												<option value="47853"></option>
												<option value="47854"></option>
												<option value="48600"></option>
												<option value="48603"></option>
												<option value="48604"></option>
												<option value="MGF8187"></option>
												<option value="MGF8167"></option>
												<option value="CAN136"></option>
												<option value="CAN236"></option>
												<option value="CAN10111"></option>
												<option value="CAN10211"></option>
											</datalist>
										</td>
										<td><input type="text" name="customer.newOwnFunds[0].fund1Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.newOwnFunds[0].fund2Code"></td>
										<td><input type="text" name="customer.newOwnFunds[0].fund2Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.newOwnFunds[0].fund3Code"></td>
										<td><input type="text" name="customer.newOwnFunds[0].fund3Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.newOwnFunds[0].fund4Code"></td>
										<td><input type="text" name="customer.newOwnFunds[0].fund4Volumn"></td>
									</tr>
									<tr>
										<td class="beige">Fund 5 Code</td>
										<td class="beige">Volumn</td>
										<td class="beige">Fund 6 Code</td>
										<td class="beige">Volumn</td>
										<td class="beige">Fund 7 Code</td>
										<td class="beige">Volumn</td>
										<td class="beige">Fund 8 Code</td>
										<td class="beige">Volumn</td>
									</tr>
									<tr>
										<td><input type="text" list="fundcode" name="customer.newOwnFunds[0].fund5Code"></td>
										<td><input type="text" name="customer.newOwnFunds[0].fund5Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.newOwnFunds[0].fund6Code"></td>
										<td><input type="text" name="customer.newOwnFunds[0].fund6Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.newOwnFunds[0].fund7Code"></td>
										<td><input type="text" name="customer.newOwnFunds[0].fund7Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.newOwnFunds[0].fund8Code"></td>
										<td><input type="text" name="customer.newOwnFunds[0].fund8Volumn"></td>
									</tr>
								</table>
							</div>
							<!-- Bank Loan -->
							<div id="tbbl" style="width: 100%;">
								<table border="1" cellspacing="0" cellpadding="0">
									<tr>
										<td colspan="8" style="font-weight: bolder;font-size: 20px;background-color: #E2EFDA;">Bank Loan</td>
										<td style="background-color: gray;color: white;">Completed</td>
									</tr>
									<tr>
										<td class="purple">Account Type</td>
										<td><input type="text" list="accounttype" name="customer.bankLoans[0].accountType"></td>
										<td class="purple">Apply Year</td>
										<td><input type="text" list="years" name="customer.bankLoans[0].applyYear"></td>
										<td class="purple">Apply Month</td>
										<td>
											<select name="customer.bankLoans[0].applyMonth">
												<option value=""></option>
												<option value="1">Jan</option>
												<option value="2">Feb</option>
												<option value="3">Mar</option>
												<option value="4">Apr</option>
												<option value="5">May</option>
												<option value="6">Jun</option>
												<option value="7">Jul</option>
												<option value="8">Aug</option>
												<option value="9">Sep</option>
												<option value="10">Oct</option>
												<option value="11">Nov</option>
												<option value="12">Dec</option>
											</select>
										</td>
										<td class="purple">Apply Day</td>
										<td><input type="text" list="days" name="customer.bankLoans[0].applyDay"></td>
										<td>
											<select name="customer.bankLoans[0].completed">
												<option value="0"></option>
												<option value="1">x</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="purple">Apply Amount</td>
										<td><input type="text" name="customer.bankLoans[0].applyAmount"></td>
										<td class="purple">Loan From</td>
										<td>
											<input type="text" list="loanfrom" name="customer.bankLoans[0].loanFrom">
											<datalist id="loanfrom">
												<option value="B2B Bank"></option>
												<option value="ManuLife Bank"></option>
												<option value="National Bank"></option>
												<option value="IA Trust"></option>
											</datalist>
										</td>
										<td class="purple">Loan No.</td>
										<td><input type="text" class="upper" name="customer.bankLoans[0].loanNo"></td>
										<td class="purple">Investment to</td>
										<td><input type="text" list="investto" name="customer.bankLoans[0].investmentTo"></td>
										<td rowspan="9" class="blocktb2"><img class="signtb2" src="./images/plus.jpg" onclick="addtb2()" style="display: none;width: 2.5rem;height: 2.5rem;position: relative;right: -5rem;bottom: -13rem;"><img class="signtb2" src="./images/minus.jpg" onclick="deltb2()" style="display: none;width: 2.5rem;height: 2.5rem;position: relative;right: -5rem;bottom: -13rem;"></td>
									</tr>
									<tr>
										<td class="purple" colspan="2">Loan Type</td>
										<td colspan="2">
											<input type="text" list="loantype" name="customer.bankLoans[0].loanType">
											<datalist id="loantype">
												<option value="100% Interest Only"></option>
												<option value="3 For 3"></option>
												<option value="2 For 2"></option>
												<option value="1 For 1"></option>
											</datalist>
										</td>
										<td class="purple">Sales Charge</td>
										<td><input type="text" list="salescharge" name="customer.bankLoans[0].salesCharge"></td>
										<td class="purple" colspan="2"></td>
									</tr>
									<tr>
										<td class="lightgreen">Settle Year</td>
										<td><input type="text" list="years" name="customer.bankLoans[0].settleYear"></td>
										<td class="lightgreen">Settle Month</td>
										<td>
											<select name="customer.bankLoans[0].settleMonth">
												<option value=""></option>
												<option value="1">Jan</option>
												<option value="2">Feb</option>
												<option value="3">Mar</option>
												<option value="4">Apr</option>
												<option value="5">May</option>
												<option value="6">Jun</option>
												<option value="7">Jul</option>
												<option value="8">Aug</option>
												<option value="9">Sep</option>
												<option value="10">Oct</option>
												<option value="11">Nov</option>
												<option value="12">Dec</option>
											</select>
										</td>
										<td class="lightgreen">Settle Day</td>
										<td><input type="text" list="days" name="customer.bankLoans[0].settleDay"></td>
										<td class="lightgreen">Settle Week</td>
										<td><input type="text" list="weeks" name="customer.bankLoans[0].settleWeek"></td>
									</tr>
									<tr>
										<td class="lightgreen">Contract No.</td>
										<td colspan="2"><input type="text" class="upper" name="customer.bankLoans[0].contractNo"></td>
										<td class="lightgreen">Settle Amount</td>
										<td><input type="text" name="customer.bankLoans[0].settleAmount"></td>
										<td class="lightgreen">Result</td>
										<td colspan="2"><input type="text" list="result" name="customer.bankLoans[0].result"></td>
									</tr>
									<tr>
										<td class="lightgreen">Referral Fee</td>
										<td><input type="text" name="customer.bankLoans[0].referralFee"></td>
										<td class="lightgreen">Comments</td>
										<td  colspan="5"><input type="text" class="upper" name="customer.bankLoans[0].comments"></td>
									</tr>
									<tr>
										<td class="lightgreen">Fund 1 Code</td>
										<td class="lightgreen">Volumn</td>
										<td class="lightgreen">Fund 2 Code</td>
										<td class="lightgreen">Volumn</td>
										<td class="lightgreen">Fund 3 Code</td>
										<td class="lightgreen">Volumn</td>
										<td class="lightgreen">Fund 4 Code</td>
										<td class="lightgreen">Volumn</td>
									</tr>
									<tr>
										<td><input type="text" list="fundcode" name="customer.bankLoans[0].fund1Code"></td>
										<td><input type="text" name="customer.bankLoans[0].fund1Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.bankLoans[0].fund2Code"></td>
										<td><input type="text" name="customer.bankLoans[0].fund2Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.bankLoans[0].fund3Code"></td>
										<td><input type="text" name="customer.bankLoans[0].fund3Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.bankLoans[0].fund4Code"></td>
										<td><input type="text" name="customer.bankLoans[0].fund4Volumn"></td>
									</tr>
									<tr>
										<td class="lightgreen">Fund 5 Code</td>
										<td class="lightgreen">Volumn</td>
										<td class="lightgreen">Fund 6 Code</td>
										<td class="lightgreen">Volumn</td>
										<td class="lightgreen">Fund 7 Code</td>
										<td class="lightgreen">Volumn</td>
										<td class="lightgreen">Fund 8 Code</td>
										<td class="lightgreen">Volumn</td>
									</tr>
									<tr>
										<td><input type="text" list="fundcode" name="customer.bankLoans[0].fund5Code"></td>
										<td><input type="text" name="customer.bankLoans[0].fund5Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.bankLoans[0].fund6Code"></td>
										<td><input type="text" name="customer.bankLoans[0].fund6Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.bankLoans[0].fund7Code"></td>
										<td><input type="text" name="customer.bankLoans[0].fund7Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.bankLoans[0].fund8Code"></td>
										<td><input type="text" name="customer.bankLoans[0].fund8Volumn"></td>
									</tr>
								</table>
							</div>
							<!-- Investment Transfer -->
							<div id="tbit" style="width: 100%;">
								<table border="1" cellspacing="0" cellpadding="0">
									<tr>
										<td colspan="8" style="font-weight: bolder;font-size: 20px;background-color: #FCE4D6;">Investment Transfer</td>
										<td style="background-color: gray;color: white;">Completed</td>
									</tr>
									<tr>
										<td class="purple">Transfer Type</td>
										<td>
											<input type="text" list="transfertype" name="customer.investmentTransfers[0].transferType">
											<datalist id="transfertype">
												<option value="Transfer in Own Fund"></option>
												<option value="Transfer in Bank Loan"></option>
											</datalist>
										</td>
										<td class="purple">Apply Year</td>
										<td><input type="text" list="years" name="customer.investmentTransfers[0].applyYear"></td>
										<td class="purple">Apply Month</td>
										<td>
											<select name="customer.investmentTransfers[0].applyMonth">
												<option value=""></option>
												<option value="1">Jan</option>
												<option value="2">Feb</option>
												<option value="3">Mar</option>
												<option value="4">Apr</option>
												<option value="5">May</option>
												<option value="6">Jun</option>
												<option value="7">Jul</option>
												<option value="8">Aug</option>
												<option value="9">Sep</option>
												<option value="10">Oct</option>
												<option value="11">Nov</option>
												<option value="12">Dec</option>
											</select>
										</td>
										<td class="purple">Apply Day</td>
										<td><input type="text" list="days" name="customer.investmentTransfers[0].applyDay"></td>
										<td>
											<select name="customer.investmentTransfers[0].completed">
												<option value="0"></option>
												<option value="1">x</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="purple">Account Type</td>
										<td><input type="text" list="accounttype" name="customer.investmentTransfers[0].accountType"></td>
										<td class="purple">Transfer Method</td>
										<td>
											<input type="text" list="transfermethod" name="customer.investmentTransfers[0].transferMethod">
											<datalist id="transfermethod">
												<option value="Whole Amount"></option>
												<option value="All in Cash"></option>
												<option value="Partial"></option>
												<option value="All Muture Funds"></option>
											</datalist>
										</td>
										<td class="purple">Account No.</td>
										<td><input type="text" class="upper" name="customer.investmentTransfers[0].accountNo"></td>
										<td class="purple">Transfer Amount</td>
										<td><input type="text" name="customer.investmentTransfers[0].transferAmount"></td>
										<td rowspan="10" class="blocktb3"><img class="signtb3" src="./images/plus.jpg" onclick="addtb3()" style="display: none;width: 2.5rem;height: 2.5rem;position: relative;right: -5rem;bottom: -15rem;"><img class="signtb3" src="./images/minus.jpg" onclick="deltb3()" style="display: none;width: 2.5rem;height: 2.5rem;position: relative;right: -5rem;bottom: -15rem;"></td>
									</tr>
									<tr>
										<td class="purple">Investment to</td>
										<td><input type="text" list="investto" name="customer.investmentTransfers[0].investmentTo"></td>
										<td class="purple">Sales Charge</td>
										<td><input type="text" list="salescharge" name="customer.investmentTransfers[0].salesCharge"></td>
										<td class="purple" colspan="2">Relinquishing Institution Name</td>
										<td colspan="2"><input type="text" class="upper" name="customer.investmentTransfers[0].relinquishingInstitutionName"></td>
									</tr>
									<tr>
										<td class="purple" colspan="3">Institution Address (City,Province,Postal Code)</td>
										<td colspan="5"><input type="text" class="upper" name="customer.investmentTransfers[0].institutionAddress"></td>
									</tr>
									<tr>
										<td class="pink">Settle Year</td>
										<td><input type="text" list="years" name="customer.investmentTransfers[0].settleYear"></td>
										<td class="pink">Settle Month</td>
										<td>
											<select name="customer.investmentTransfers[0].settleMonth">
												<option value=""></option>
												<option value="1">Jan</option>
												<option value="2">Feb</option>
												<option value="3">Mar</option>
												<option value="4">Apr</option>
												<option value="5">May</option>
												<option value="6">Jun</option>
												<option value="7">Jul</option>
												<option value="8">Aug</option>
												<option value="9">Sep</option>
												<option value="10">Oct</option>
												<option value="11">Nov</option>
												<option value="12">Dec</option>
											</select>
										</td>
										<td class="pink">Settle Day</td>
										<td><input type="text" list="days" name="customer.investmentTransfers[0].settleDay"></td>
										<td class="pink">Settle Week</td>
										<td><input type="text" list="weeks" name="customer.investmentTransfers[0].settleWeek"></td>
									</tr>
									<tr>
										<td class="pink">Contract No.</td>
										<td colspan="2"><input type="text" class="upper" name="customer.investmentTransfers[0].contractNo"></td>
										<td class="pink">Settle Amount</td>
										<td><input type="text" name="customer.investmentTransfers[0].settleAmount"></td>
										<td class="pink">Result</td>
										<td colspan="2"><input type="text" list="result" name="customer.investmentTransfers[0].result"></td>
									</tr>
									<tr>
										<td class="pink">Referral Fee</td>
										<td><input type="text" name="customer.investmentTransfers[0].referralFee"></td>
										<td class="pink">Comments</td>
										<td  colspan="5"><input type="text" class="upper" name="customer.investmentTransfers[0].comments"></td>
									</tr>
									<tr>
										<td class="pink">Fund 1 Code</td>
										<td class="pink">Volumn</td>
										<td class="pink">Fund 2 Code</td>
										<td class="pink">Volumn</td>
										<td class="pink">Fund 3 Code</td>
										<td class="pink">Volumn</td>
										<td class="pink">Fund 4 Code</td>
										<td class="pink">Volumn</td>
									</tr>
									<tr>
										<td><input type="text" list="fundcode" name="customer.investmentTransfers[0].fund1Code"></td>
										<td><input type="text" name="customer.investmentTransfers[0].fund1Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.investmentTransfers[0].fund2Code"></td>
										<td><input type="text" name="customer.investmentTransfers[0].fund2Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.investmentTransfers[0].fund3Code"></td>
										<td><input type="text" name="customer.investmentTransfers[0].fund3Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.investmentTransfers[0].fund4Code"></td>
										<td><input type="text" name="customer.investmentTransfers[0].fund4Volumn"></td>
									</tr>
									<tr>
										<td class="pink">Fund 5 Code</td>
										<td class="pink">Volumn</td>
										<td class="pink">Fund 6 Code</td>
										<td class="pink">Volumn</td>
										<td class="pink">Fund 7 Code</td>
										<td class="pink">Volumn</td>
										<td class="pink">Fund 8 Code</td>
										<td class="pink">Volumn</td>
									</tr>
									<tr>
										<td><input type="text" list="fundcode" name="customer.investmentTransfers[0].fund5Code"></td>
										<td><input type="text" name="customer.investmentTransfers[0].fund5Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.investmentTransfers[0].fund6Code"></td>
										<td><input type="text" name="customer.investmentTransfers[0].fund6Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.investmentTransfers[0].fund7Code"></td>
										<td><input type="text" name="customer.investmentTransfers[0].fund7Volumn"></td>
										<td><input type="text" list="fundcode" name="customer.investmentTransfers[0].fund8Code"></td>
										<td><input type="text" name="customer.investmentTransfers[0].fund8Volumn"></td>
									</tr>
								</table>
							</div>
							<div style="width: 12rem;height: 4rem;margin: auto;"><input type="submit" value="Confirm" style="background-color: steelblue;color: white;border-radius: 0.5rem;font-size: 1.5625rem;"></div>
						</div>
					</div>
				</div>
			</div>

		</form>
	</div>
    <div></div>
	
	<script>
		// customerId
		jQuery("#agentcode").blur(function(){
			var ac = jQuery("#agentcode").val();
			if(ac!="" & ac!=null){
				var date = new Date();
				var year = date.getFullYear();
				var month = date.getMonth()+1;
				month = month<10?'0'+month:month;
				var day = date.getDate();
				day = day<10?'0'+day:day;
				var hour = date.getHours();
				hour = hour<10?'0'+hour:hour;
				var minute = date.getMinutes();
				minute = minute<10?'0'+minute:minute;
				var cid = ac+year+month+day+hour+minute;
				jQuery("input[name='customer.customerId']").val(cid);
				
				var hca = jQuery("select[name='hasCoApplicant']").val();
				if(hca=="1"){
						$("#coapptab").show();
						var date = new Date();
						date.setMinutes(date.getMinutes()+2);
						var year = date.getFullYear();
						var month = date.getMonth()+1;
						month = month<10?'0'+month:month;
						var day = date.getDate();
						day = day<10?'0'+day:day;
						var hour = date.getHours();
						hour = hour<10?'0'+hour:hour;
						var minute = date.getMinutes();
						minute = minute<10?'0'+minute:minute;
						var cid = ac+year+month+day+hour+minute;
						jQuery("input[name='coApplicant.customerId']").val(cid);
				}
			}
		})
		// coapplicantId
		jQuery("select[name='hasCoApplicant']").blur(function(){
			var hca = jQuery("select[name='hasCoApplicant']").val();
			if(hca=="1"){
				$("#coapptab").show();
				var ac = jQuery("#agentcode").val();
				if(ac!="" & ac!=null){
					var date = new Date();
					date.setMinutes(date.getMinutes()+2);
					var year = date.getFullYear();
					var month = date.getMonth()+1;
					month = month<10?'0'+month:month;
					var day = date.getDate();
					day = day<10?'0'+day:day;
					var hour = date.getHours();
					hour = hour<10?'0'+hour:hour;
					var minute = date.getMinutes();
					minute = minute<10?'0'+minute:minute;
					var cid = ac+year+month+day+hour+minute;
					jQuery("input[name='coApplicant.customerId']").val(cid);
				}else{
					alert("please input 'Agent Code' first.")
				}
			}else{
				jQuery("input[name='coApplicant.customerId']").val("");
				$("#coapptab").hide();
			}
		})
		// sin validation
		$("#sin1").blur(function(){
			var sin = $("#sin1").val();
			var base = 121212121;
			s = 0;
			if(Math.floor(sin/Math.pow(10,8))>0 && Math.floor(sin/Math.pow(10,8))<10 && Math.floor(sin/Math.pow(10,8))!=8){
				for(let i=0;i<9;i++){
					a = Math.floor(sin/Math.pow(10,i))%10;
					b = Math.floor(base/Math.pow(10,i))%10;
					s+=a*b<10?a*b:(Math.floor(a*b/10)+(a*b)%10);
				}
				if(s%10!=0){
					alert('invalid sin number!');
				}  
			}
			else{
				alert('invalid SIN. must be 9 digit, and can not leading with 0 or 8');
			}
		})
		// co applicant sin validation
		$("#sin2").blur(function(){
			var sin = $("#sin2").val();
			var base = 121212121;
			s = 0;
			if(Math.floor(sin/Math.pow(10,8))>0 && Math.floor(sin/Math.pow(10,8))<10 && Math.floor(sin/Math.pow(10,8))!=8){
				for(let i=0;i<9;i++){
					a = Math.floor(sin/Math.pow(10,i))%10;
					b = Math.floor(base/Math.pow(10,i))%10;
					s+=a*b<10?a*b:(Math.floor(a*b/10)+(a*b)%10);
				}
				if(s%10!=0){
					alert('invalid sin number!');
				}  
			}
			else{
				alert('invalid SIN. must be 9 digit, and can not leading with 0 or 8');
			}
		})
		
		// monthly Income
		var annuals = $(".annualincome");
		annuals.blur(function(){
			var annualname = $(this).attr("name");
			var monthname = annualname.substring(0,annualname.indexOf("]")+1)+".monthly";
			var annualvalue = $(this).val();
			if(annualvalue!=null && annualvalue.trim().length>0){
				if(!isNaN(annualvalue)){
					var monthvalue = (annualvalue/12).toFixed(2);
					$("input[name='"+monthname+"']").val(monthvalue);
				}else{
					alert("not a number!");
				}
			}else{
				$("input[name='"+monthname+"']").val(null);
			}
		})
		
		// live in canada since Birth
		$("#livesince").blur(function(){
			var year = $("#birthyear").val();
			var month = $("#birthmonth").val();
			var day = $("#birthday").val();
			var livesince = $("#livesince").val();
			if(livesince=="Birth"){
				if(year!=null & year!="" & month!=null & month!="" & day!=null & day!=""){
					month = month<10?'0'+month:month;
					sincedate = year + "-" + month + "-" + day;
					$("#sincedate").val(sincedate);
				}else{
					alert("please enter birth year, month, day first!");
				}
			}else{
				$("#sincedate").val("");
			}
		})
		
		// uppercase
		$(".upper").blur(function(){
			$(this).val($(this).val().toLocaleUpperCase());
		})
		
		// net worth
		$(".mv,.labl,.av,.cav").change(function(){
			var mv = $(".mv");
			var labl = $(".labl");
			var av = $(".av");
			var cav = $(".cav");
			var sum = 0,result="";
			for(var i=0;i<mv.length;i++){
				sum+=isNaN(mv.eq(i).val()*1)?0:mv.eq(i).val()*1;
			}
			for(var i=0;i<labl.length;i++){
				sum-=isNaN(labl.eq(i).val()*1)?0:labl.eq(i).val()*1;
			}
			for(var i=0;i<av.length;i++){
				sum+=isNaN(av.eq(i).val()*1)?0:av.eq(i).val()*1;
			}
			for(var i=0;i<cav.length;i++){
				sum+=isNaN(cav.eq(i).val()*1)?0:cav.eq(i).val()*1;
			}
			sums = sum.toFixed(2).split(".");
			while (sums[0].length > 3) {
				result = ',' + sums[0].slice(-3) + result;
				sums[0] = sums[0].slice(0, sums[0].length - 3);
			}
			if (sums[0]) { result = sums[0] + result; }
			$("#networth").html("$"+result+"."+sums[1]);
		})
		
		// TDSR
		$(".mlb,.mpt,.mcf,.annualincome").change(function(){
			var mlb = $(".mlb");
			var mpt = $(".mpt");
			var mcf = $(".mcf");
			var ai = $(".annualincome");
			var lbs = 0,ics = 0,percent="";
			for(var i=0;i<mlb.length;i++){
				lbs+=isNaN(mlb.eq(i).val()*1)?0:mlb.eq(i).val()*1;
			}
			for(var i=0;i<mpt.length;i++){
				lbs+=isNaN(mpt.eq(i).val()*1)?0:mpt.eq(i).val()*1;
			}
			for(var i=0;i<mcf.length;i++){
				lbs+=isNaN(mcf.eq(i).val()*1)?0:mcf.eq(i).val()*1;
			}
			for(var i=0;i<ai.length;i++){
				ics+=isNaN(ai.eq(i).val()*1)?0:ai.eq(i).val()*1;
			}
			if(ics>0 && (lbs*12/ics)<=0.36){
				$("#approve").html("Approve");
			}else{
				$("#approve").html("Not Approve");
			}
			percent = ics>0?(lbs*1200/ics).toFixed(2)+"%":"";
			$("#tdsr").html(percent);
		})
		
		$(".block3").hover(function(){$(".sign3").show();},function(){$(".sign3").hide();});
		$(".block2").hover(function(){$(".sign2").show();},function(){$(".sign2").hide();});
		$(".block1").hover(function(){$(".sign1").show();},function(){$(".sign1").hide();});
		$(".block0").hover(function(){$(".sign0").show();},function(){$(".sign0").hide();});
		$(".blocktb1").hover(function(){$(".signtb1").show();},function(){$(".signtb1").hide();});
		$(".blocktb2").hover(function(){$(".signtb2").show();},function(){$(".signtb2").hide();});
		$(".blocktb3").hover(function(){$(".signtb3").show();},function(){$(".signtb3").hide();});
		function addrow3(){
			var i = $("#table3 tr").length-1;
			var newtr=$("#table3").find("tr:last").clone(true);
			var inputs = newtr.find("input");
			inputs.eq(0).attr("name","customer.incomes["+i+"].type");
			inputs.eq(1).attr("name","customer.incomes["+i+"].annual");
			inputs.eq(2).attr("name","customer.incomes["+i+"].monthly");
			inputs.val("");
			$("#table3").append(newtr);
			$("#table3 tr").eq(-2).find("img").remove();
		}
		function addrow2(){
			var i = $("#table2 tr").length-1;
			var newtr=$("#table2").find("tr:last").clone(true);
			var inputs = newtr.find("input");
			inputs.eq(0).attr("name","customer.assets["+i+"].type");
			inputs.eq(1).attr("name","customer.assets["+i+"].applicantValue");
			inputs.eq(2).attr("name","customer.assets["+i+"].institution");
			inputs.eq(3).attr("name","customer.assets["+i+"].coApplicantValue");
			inputs.eq(4).attr("name","customer.assets["+i+"].coInstitution");
			inputs.val("");
			$("#table2").append(newtr);
			$("#table2 tr").eq(-2).find("img").remove();
		}
		function addrow1(){
			var i = $("#table1 tr").length-3;
			var newtr=$("#table1").find("tr:last").clone(true);
			var inputs = newtr.find("input");
			inputs.eq(0).attr("name","customer.liabilities["+i+"].type");
			inputs.eq(1).attr("name","customer.liabilities["+i+"].marketValue");
			inputs.eq(2).attr("name","customer.liabilities["+i+"].liabilityBalance");
			inputs.eq(3).attr("name","customer.liabilities["+i+"].institution");
			inputs.eq(4).attr("name","customer.liabilities["+i+"].monthlyLiability");
			inputs.eq(5).attr("name","customer.liabilities["+i+"].monthlyPropertyTax");
			inputs.eq(6).attr("name","customer.liabilities["+i+"].monthlyCondoFee");
			inputs.val("");
			$("#table1").append(newtr);
			$("#table1 tr").eq(-2).find("img").remove();
		}
		function addrow0(){
			var i = $("#personaltb tr").length-35;
			var newtr=$("#personaltb").find("tr:last").clone(true);
			var inputs = newtr.find("input");
			inputs.eq(0).attr("name","customer.beneficiariesTrustee["+i+"].type");
			inputs.eq(1).attr("name","customer.beneficiariesTrustee["+i+"].lastName");
			inputs.eq(2).attr("name","customer.beneficiariesTrustee["+i+"].firstName");
			inputs.eq(3).attr("name","customer.beneficiariesTrustee["+i+"].relationship");
			inputs.eq(4).attr("name","customer.beneficiariesTrustee["+i+"].gender");
			inputs.eq(5).attr("name","customer.beneficiariesTrustee["+i+"].benificiaryType");
			inputs.eq(6).attr("name","customer.beneficiariesTrustee["+i+"].dob");
			inputs.eq(7).attr("name","customer.beneficiariesTrustee["+i+"].sharePercent");
			inputs.eq(8).attr("name","customer.beneficiariesTrustee["+i+"].sinForRESPOnly");
			inputs.val("");
			$("#personaltb").append(newtr);
			$("#personaltb tr").eq(-2).find("img").remove();
		}
		function delrow3(){
			var n = $("#table3 tr").length-1;
			var m = n-1;
			if(n>1){
				var imgs = $("#table3 tr:last").find("td:last").find("img").clone(true);
				$("#table3 tr").eq(m).find("td:last").append(imgs);
				$("#table3 tr").eq(n).remove();
			}
		}
		function delrow2(){
			var n = $("#table2 tr").length-1;
			var m = n-1;
			if(n>1){
				var imgs = $("#table2 tr:last").find("td:last").find("img").clone(true);
				$("#table2 tr").eq(m).find("td:last").append(imgs);
				$("#table2 tr").eq(n).remove();
			}
		}
		function delrow1(){
			var n = $("#table1 tr").length-1;
			var m = n-1;
			if(n>3){
				var imgs = $("#table1 tr:last").find("td:last").find("img").clone(true);
				$("#table1 tr").eq(m).find("td:last").append(imgs);
				$("#table1 tr").eq(n).remove();
			}
		}
		function delrow0(){
			var n = $("#personaltb tr").length-1;
			var m = n-1;
			if(n>35){
				var imgs = $("#personaltb tr:last").find("td:last").find("img").clone(true);
				$("#personaltb tr").eq(m).find("td:last").append(imgs);
				$("#personaltb tr").eq(n).remove();
			}
		}
		// add new own funds
		function addtb1(){
			var i = $("#tbnof table").length;
			var newtd=$("#tbnof table:last").clone(true);
			var inputs = newtd.find("input");
			var selects = newtd.find("select");
			for(let j=0;j<selects.length;j++){
				str = selects.eq(j).attr("name");
				selects.eq(j).attr("name",str.substring(0,str.indexOf("[")+1)+i+str.substring(str.indexOf("]")));
			}
			for(let j=0;j<inputs.length;j++){
				str = inputs.eq(j).attr("name");
				inputs.eq(j).attr("name",str.substring(0,str.indexOf("[")+1)+i+str.substring(str.indexOf("]")));
			}
			inputs.val("");
			$("#tbnof").append(newtd);
			$("#tbnof table").eq(-2).find("img").remove();
		}
		// add bank loans
		function addtb2(){
			var i = $("#tbbl table").length;
			var newtd=$("#tbbl table:last").clone(true);
			var inputs = newtd.find("input");
			var selects = newtd.find("select");
			for(let j=0;j<selects.length;j++){
				str = selects.eq(j).attr("name");
				selects.eq(j).attr("name",str.substring(0,str.indexOf("[")+1)+i+str.substring(str.indexOf("]")));
			}
			for(let j=0;j<inputs.length;j++){
				str = inputs.eq(j).attr("name");
				inputs.eq(j).attr("name",str.substring(0,str.indexOf("[")+1)+i+str.substring(str.indexOf("]")));
			}
			inputs.val("");
			$("#tbbl").append(newtd);
			$("#tbbl table").eq(-2).find("img").remove();
		}
		// add investment transfer
		function addtb3(){
			var i = $("#tbit table").length;
			var newtd=$("#tbit table:last").clone(true);
			var inputs = newtd.find("input");
			var selects = newtd.find("select");
			for(let j=0;j<selects.length;j++){
				str = selects.eq(j).attr("name");
				selects.eq(j).attr("name",str.substring(0,str.indexOf("[")+1)+i+str.substring(str.indexOf("]")));
			}
			for(let j=0;j<inputs.length;j++){
				str = inputs.eq(j).attr("name");
				inputs.eq(j).attr("name",str.substring(0,str.indexOf("[")+1)+i+str.substring(str.indexOf("]")));
			}
			inputs.val("");
			$("#tbit").append(newtd);
			$("#tbit table").eq(-2).find("img").remove();
		}
		
		function deltb1(){
			var n = $("#tbnof table").length-1;
			var m = n-1;
			if(n>0){
				var imgs = $("#tbnof").find("table:last").find("img").clone(true);
				$("#tbnof table").eq(m).find("tr").eq(2).find("td:last").append(imgs);
				$("#tbnof table").eq(n).remove();
			}
		}
		function deltb2(){
			var n = $("#tbbl table").length-1;
			var m = n-1;
			if(n>0){
				var imgs = $("#tbbl").find("table:last").find("img").clone(true);
				$("#tbbl table").eq(m).find("tr").eq(2).find("td:last").append(imgs);
				$("#tbbl table").eq(n).remove();
			}
		}
		function deltb3(){
			var n = $("#tbit table").length-1;
			var m = n-1;
			if(n>0){
				var imgs = $("#tbit").find("table:last").find("img").clone(true);
				$("#tbit table").eq(m).find("tr").eq(2).find("td:last").append(imgs);
				$("#tbit table").eq(n).remove();
			}
		}
	</script>
</body>
</html>
