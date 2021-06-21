package service;

import java.util.List;

import org.springframework.stereotype.Service;

import pojo.Asset;
import pojo.Assets;
import pojo.BankLoans;
import pojo.BankLoansTable;
import pojo.BeneficiariesTrustee;
import pojo.Conditions;
import pojo.Customer;
import pojo.CustomerTable;
import pojo.EmploymentInfos;
import pojo.Incomes;
import pojo.InvTransTable;
import pojo.InvestmentTransfers;
import pojo.Liabilities;
import pojo.NewOwnFunds;
import pojo.NewOwnFundsTable;
import pojo.TransactionTable;
import pojo.Transactions;

@Service
public interface AccountService {
    public List<TransactionTable> selectAllTransactions();
    public List<CustomerTable> selectAllCustomers();
    public List<NewOwnFundsTable> selectAllNewOwnFunds();
	public List<BankLoansTable> selectAllBankLoans();
	public List<InvTransTable> selectAllInvTrans();
	public Customer checkCustomer(String customerId);
	public void addCustomer(Customer customer);
	public void addTransactions(Transactions transaction);
	public void addEmploymentInfos(EmploymentInfos employmentInfos);
	public void addBeneficiariesTrustee(BeneficiariesTrustee beneficiariesTrustee);
	public void addLiabilities(Liabilities liabilities);
	public void addAssets(Asset asset);
	public void addIncomes(Incomes incomes);
	public void addNewOwnFunds(NewOwnFunds newOwnFunds);
	public void addBankLoans(BankLoans bankLoans);
	public void addInvestmentTransfers(InvestmentTransfers investmentTransfers);
	public List<EmploymentInfos> getEmploymentInfosList(String customerId);
	public List<BeneficiariesTrustee> getBeneficiariesList(String customerId);
	public List<Liabilities> getLiabilitiesList(String customerId);
	public List<Assets> getAssetsList(String customerId);
	public List<Incomes> getIncomesList(String customerId);
	public List<NewOwnFunds> getNewOwnFundsList(String customerId);
	public List<BankLoans> getBankLoansList(String customerId);
	public List<InvestmentTransfers> getInvTransList(String customerId);
	public Transactions getTransaction(String customerId);
	public Transactions showDetail(String customerId);
	public void updateTransaction(Transactions transaction);
	public void updateCustomer(Customer customer);
	public void updateEmploymentInfos(EmploymentInfos employmentInfo);
	public void updateBeneficiariesTrustee(BeneficiariesTrustee beneficiariesTrustee);
	public void updateLiabilities(Liabilities liability);
	public void updateAssets(Asset asset);
	public void updateIncomes(Incomes income);
	public void updateNewOwnFunds(NewOwnFunds newOwnFund);
	public void updateBankLoans(BankLoans bankLoan);
	public void updateInvestmentTransfers(InvestmentTransfers investmentTransfer);
	public EmploymentInfos checkEmploymentInfos(EmploymentInfos employmentInfo);
	public Asset checkAssets(Asset asset);
	public List<TransactionTable> queryTrans(Conditions conditions);
	public List<CustomerTable> queryCustomer(Conditions conditions);
	public List<NewOwnFundsTable> queryNOF(Conditions conditions);
	public List<BankLoansTable> queryBL(Conditions conditions);
	public List<InvTransTable> queryIT(Conditions conditions);
	public String getCustomerIdByCoApplicantId(String customerId);
}
