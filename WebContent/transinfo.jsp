<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Transactions Infomation</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/css/bootstrap.min.css" />
		<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>

		<style>
			table {
				margin: 50px auto;
				box-shadow: 5px 5px 5px 1px gray;
			}

			.blue {
				color: dodgerblue;
				font-weight: 600;
			}

			.red {
				color: salmon;
				font-weight: 600;
			}

			.green {
				color: seagreen;
				font-weight: 600;
			}

			.tabfont {
				font-size: 15px;
				font-weight: 600;
				color: #5BC0DE;
			}
			.smt {background-color: #5BC0DE;border-radius: 0.3125rem;border: none;width: 8rem;
			      height: 2.8rem;color: white;box-shadow: 0.1875rem 0.1875rem 0.1875rem lightgray;}
			.addnew {text-decoration: none;color: white;background-color: darkturquoise;
			         border-radius: 0.3125rem;width: 9.375rem;height: 3.125rem;font-size: 1.3rem;
					 font-weight: bold;display: flex;align-items: center;justify-content: center;
			         margin-top: 1.25rem;box-shadow: 0.3125rem 0.3125rem 0.3125rem 0.0625rem lightgrey;}
			.detail {text-decoration: none;color: white;background-color: lightcoral;
			         border-radius: 0.3125rem;height: 2.1875rem;font-size: 1.1875rem;
			         display: flex;align-items: center;justify-content: center;
			         box-shadow: 0.125rem 0.125rem 0.125rem 0.0625rem lightgrey;}
			input {width: 15.625rem;}
		</style>
	</head>
	<body>
		<h1><strong style="color: #5BC0DE;display: inline-block;">Transactions Information</strong></h1>
		<div>
			<form action="<%=path%>/checkInfo.action" method="post">
				<table style="box-shadow: 0rem 0rem 0rem white;">
					<tr>
						<td>Agent Code:</td>
						<td><input type="text" value="${condition.agentCode }" name="agentCode"></td>
						<td>Enter Date From:</td>
						<td><input type="date" value="<fmt:formatDate value='${condition.enterDateFrom }' pattern='yyyy-MM-dd' />" name="enterDateFrom"></td>
						<td>Enter Date To:</td>
						<td><input type="date" value="<fmt:formatDate value='${condition.enterDateTo }' pattern='yyyy-MM-dd' />" name="enterDateTo"></td>
						<td>Customer ID:</td>
						<td><input type="text" value="${condition.customerId }" name="customerId"></td>
						<td>Customer First Name:</td>
						<td><input type="text" value="${condition.cuFirstName }" name="cuFirstName"></td>
						<td>Customer Last Name:</td>
						<td><input type="text" value="${condition.cuLastName }" name="cuLastName"></td>
					</tr>
					<tr style="height: 0.625rem;"></tr>
					<tr>
						<td>Co Applicant ID:</td>
						<td><input type="text" value="${condition.coApplicantId }" name="coApplicantId"></td>
						<td>Co Applicant First Name:</td>
						<td><input type="text" value="${condition.coFirstName }" name="coFirstName"></td>
						<td>Co Applicant Last Name:</td>
						<td><input type="text" value="${condition.coLastName }" name="coLastName"></td>
						<td>Referrer ID:</td>
						<td><input type="text" value="${condition.referrerId }" name="referrerId"></td>
						<td>Referrer First Name:</td>
						<td><input type="text" value="${condition.referrerFirstName }" name="referrerFirstName"></td>
						<td>Referrer Last Name:</td>
						<td><input type="text" value="${condition.referrerLastName }" name="referrerLastName"></td>
					</tr>
					<tr style="height: 0.625rem;"></tr>
					<tr>
						<td>Referral Time From:</td>
						<td><input type="date" value="<fmt:formatDate value='${condition.referralTimeFrom }' pattern='yyyy-MM-dd' />" name="referralTimeFrom"></td>
						<td>Referral Time To:</td>
						<td><input type="date" value="<fmt:formatDate value='${conditon.referralTimeTo }' pattern='yyyy-MM-dd' />" name="referralTimeTo"></td>
						<td>Apply Date From:</td>
						<td><input type="date" value="<fmt:formatDate value='${condition.applyDateFrom }' pattern='yyyy-MM-dd' />" name="applyDateFrom"></td>
						<td>Apply Date To:</td>
						<td><input type="date" value="<fmt:formatDate value='${condition.applyDateTo }' pattern='yyyy-MM-dd' />" name="applyDateTo"></td>
						<td>Settle Date From:</td>
						<td><input type="date" value="<fmt:formatDate value='${condition.settleDateFrom }' pattern='yyyy-MM-dd' />" name="settleDateFrom"></td>
						<td>Settle Date To:</td>
						<td><input type="date" value="<fmt:formatDate value='${condition.settleDateTo }' pattern='yyyy-MM-dd' />" name="settleDateTo"></td>
					</tr>
					<tr style="height: 1.25rem;"></tr>
					<tr>
						<td colspan="12" style="text-align: center;"><input class="smt" type="submit" value="Search"></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="tabs">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#transactionInfo">
						<font class="tabfont">Transactions</font>
					</a></li>
				<li><a data-toggle="tab" href="#customerInfo">
						<font class="tabfont">Customers</font>
					</a></li>
				<li><a data-toggle="tab" href="#accountInfo">
						<font class="tabfont">Accounts</font>
					</a></li>
			</ul>
			<div class="tab-content">
				<div id="transactionInfo" class="tab-pane active">
					<div class="table-responsive col-md-12">
						<table class="table table-condensed table-hover table-striped table-bordered col-md-10">
							<thead>
								<!-- <h3><strong style="color: #5BC0DE;display: inline-block;box-shadow: 5px 5px 5px 1px gray;">Transactions</strong></h3> -->
								<a class="addnew" href="<%=path %>/AddAccount.jsp">Add Record</a>
								<tr>
									<th class="btn-info">ID</th>
									<th class="btn-info">Agent Code</th>
									<th class="btn-info">Enter Date</th>
									<th class="btn-info">Customer ID</th>
									<th class="btn-info">Customer Name</th>
									<th class="btn-info">Co Applicant ID</th>
									<th class="btn-info">Co Applicant Name</th>
									<th class="btn-info">Referrer ID</th>
									<th class="btn-info">Referrer Name</th>
									<th class="btn-info">Referral Time</th>
									<th class="btn-info">Comments</th>
									<th class="btn-info">Operation</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${allTransactions }" var="transaction">
									<tr>
										<td>${transaction.id }</td>
										<td>${transaction.agent_code }</td>
										<td>
											<fmt:formatDate value="${transaction.enter_date }" pattern="yyyy-MM-dd" />
										</td>
										<td>${transaction.customerID }</td>
										<td>${transaction.customerName }</td>
										<td>${transaction.co_applicantID }</td>
										<td>${transaction.coApplicantName }</td>
										<td>${transaction.referrerID }</td>
										<td>${transaction.referrerName }</td>
										<td>
											<fmt:formatDate value="${transaction.referral_time }" pattern="yyyy-MM-dd" />
										</td>
										<td>${transaction.comments }</td>
										<td>
											<div>
												<a class="detail" href="<%=path%>/showDetail.action?customerId=${transaction.customerID }">Detail</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div id="customerInfo" class="tab-pane">
					<div class="table-responsive col-md-12">
						<table class="table table-condensed table-hover table-striped table-bordered col-md-10">
							<thead>
								<!-- <h3><strong style="color: #5BC0DE;display: inline-block;box-shadow: 5px 5px 5px 1px gray;">Customers</strong></h3> -->
								<tr>
									<th class="btn-info">CustomerID</th>
									<th class="btn-info">First Name</th>
									<th class="btn-info">Last Name</th>
									<th class="btn-info">English Name</th>
									<th class="btn-info">Gender</th>
									<th class="btn-info">DOB</th>
									<th class="btn-info">Email</th>
									<th class="btn-info">Cell Phone</th>
									<th class="btn-info">Home Phone</th>
									<th class="btn-info">Work Phone</th>
									<th class="btn-info">Comments</th>
									<th class="btn-info">Operation</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${allCustomers }" var="customer">
									<tr>
										<td>${customer.customerId }</td>
										<td>${customer.firstName }</td>
										<td>${customer.lastName }</td>
										<td>${customer.englishName }</td>
										<td>${customer.gender }</td>
										<td>${customer.dob }</td>
										<td>${customer.email }</td>
										<td>${customer.cellPhone }</td>
										<td>${customer.homePhone }</td>
										<td>${customer.workPhone }</td>
										<td>${customer.comments }</td>
										<td>
											<div>
												<a class="detail" href="<%=path%>/showDetail.action?customerId=${customer.customerId }">Detail</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div id="accountInfo" class="tab-pane">
					<div class="table-responsive col-md-12">
						<table class="table table-condensed table-hover table-striped table-bordered col-md-10">
							<thead>
								<tr><td colspan="16"><h4><strong style="color: #5BC0DE;display: inline-block;box-shadow: 5px 5px 5px 1px gray;">New Own Funds</strong></h4></td></tr>
								<tr>
									<tr>
										<th class="btn-info">ID</th>
										<th class="btn-info">CustomerID</th>
										<th class="btn-info">Completed</th>
										<th class="btn-info">Apply Date</th>
										<th class="btn-info">Apply Amount</th>
										<th class="btn-info">Account Type</th>
										<th class="btn-info">Investment To</th>
										<th class="btn-info">Name Of Account Owner</th>
										<th class="btn-info">Sales Charge</th>
										<th class="btn-info">Settle Date</th>
										<th class="btn-info">Settle Amount</th>
										<th class="btn-info">Contract No.</th>
										<th class="btn-info">Result</th>
										<th class="btn-info">Referral Fee</th>
										<th class="btn-info">Comments</th>
										<th class="btn-info">Operation</th>
									</tr>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${allNewOwnFunds }" var="nof">
									<tr>
										<td>${nof.id }</td>
										<td>${nof.customerId }</td>
										<td>${nof.completed }</td>
										<td><fmt:formatDate value="${nof.applyDate }" pattern="yyyy-MM-dd" /></td>
										<td>${nof.applyAmount }</td>
										<td>${nof.accountType }</td>
										<td>${nof.investTo }</td>
										<td>${nof.nameOfOwner }</td>
										<td>${nof.salesCharge }</td>
										<td><fmt:formatDate value="${nof.settleDate }" pattern="yyyy-MM-dd" /></td>
										<td>${nof.settleAmount }</td>
										<td>${nof.contractNo }</td>
										<td>${nof.result }</td>
										<td>${nof.referralFee }</td>
										<td>${nof.comments }</td>
										<td>
											<div>
												<a class="detail" href="<%=path%>/showDetail.action?customerId=${nof.customerId }">Detail</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<table class="table table-condensed table-hover table-striped table-bordered col-md-10">
							<thead>
								<tr><td colspan="16"><h4><strong style="color: #5BC0DE;display: inline-block;box-shadow: 5px 5px 5px 1px gray;">Bank Loans</strong></h4></td></tr>
								<tr>
									<tr>
										<th class="btn-info">ID</th>
										<th class="btn-info">CustomerID</th>
										<th class="btn-info">Completed</th>
										<th class="btn-info">Apply Date</th>
										<th class="btn-info">Apply Amount</th>
										<th class="btn-info">Account Type</th>
										<th class="btn-info">Investment To</th>
										<th class="btn-info">Loan Number</th>
										<th class="btn-info">Sales Charge</th>
										<th class="btn-info">Settle Date</th>
										<th class="btn-info">Settle Amount</th>
										<th class="btn-info">Contract No.</th>
										<th class="btn-info">Result</th>
										<th class="btn-info">Referral Fee</th>
										<th class="btn-info">Comments</th>
										<th class="btn-info">Operation</th>
									</tr>
								</tr>
							</thead>
							
							<tbody>
								<c:forEach items="${allBankLoans }" var="bl">
									<tr>
										<td>${bl.id }</td>
										<td>${bl.customerId }</td>
										<td>${bl.completed }</td>
										<td><fmt:formatDate value="${bl.applyDate }" pattern="yyyy-MM-dd" /></td>
										<td>${bl.applyAmount }</td>
										<td>${bl.accountType }</td>
										<td>${bl.investTo }</td>
										<td>${bl.loanNo }</td>
										<td>${bl.salesCharge }</td>
										<td><fmt:formatDate value="${bl.settleDate }" pattern="yyyy-MM-dd" /></td>
										<td>${bl.settleAmount }</td>
										<td>${bl.contractNo }</td>
										<td>${bl.result }</td>
										<td>${bl.referralFee }</td>
										<td>${bl.comments }</td>
										<td>
											<div>
												<a class="detail" href="<%=path%>/showDetail.action?customerId=${bl.customerId }">Detail</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<table class="table table-condensed table-hover table-striped table-bordered col-md-10">
							<thead>
								<tr><td colspan="16"><h4><strong style="color: #5BC0DE;display: inline-block;box-shadow: 5px 5px 5px 1px gray;">Investment Transfers</strong></h4></td></tr>
								<tr>
									<tr>
										<th class="btn-info">ID</th>
										<th class="btn-info">CustomerID</th>
										<th class="btn-info">Completed</th>
										<th class="btn-info">Transfer Type</th>
										<th class="btn-info">Apply Date</th>
										<th class="btn-info">Transfer Amount</th>
										<th class="btn-info">Account Type</th>
										<th class="btn-info">Investment To</th>
										<th class="btn-info">Sales Charge</th>
										<th class="btn-info">Settle Date</th>
										<th class="btn-info">Settle Amount</th>
										<th class="btn-info">Contract No.</th>
										<th class="btn-info">Result</th>
										<th class="btn-info">Referral Fee</th>
										<th class="btn-info">Comments</th>
										<th class="btn-info">Operation</th>
									</tr>
								</tr>
							</thead>
							
							<tbody>
								<c:forEach items="${allInvTrans }" var="inv">
									<tr>
										<td>${inv.id }</td>
										<td>${inv.customerId }</td>
										<td>${inv.completed }</td>
										<td>${inv.transferType }</td>
										<td><fmt:formatDate value="${inv.applyDate }" pattern="yyyy-MM-dd" /></td>
										<td>${inv.transferAmount }</td>
										<td>${inv.accountType }</td>
										<td>${inv.investTo }</td>
										<td>${inv.salesCharge }</td>
										<td><fmt:formatDate value="${inv.settleDate }" pattern="yyyy-MM-dd" /></td>
										<td>${inv.settleAmount }</td>
										<td>${inv.contractNo }</td>
										<td>${inv.result }</td>
										<td>${inv.referralFee }</td>
										<td>${inv.comments }</td>
										<td>
											<div>
												<a class="detail" href="<%=path%>/showDetail.action?customerId=${inv.customerId }">Detail</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
