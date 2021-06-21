package service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.AccountMapper;
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
import service.AccountService;

@Service
public class AccountServiceImp implements AccountService {

	@Autowired
	private AccountMapper accountMapper;

	@Override
	public List<TransactionTable> selectAllTransactions() {
		return accountMapper.selectAllTransactions();
	}

	@Override
	public List<CustomerTable> selectAllCustomers() {
		return accountMapper.selectAllCustomers();
	}
	
	@Override
	public Customer checkCustomer(String customerId) {
		return accountMapper.checkCustomer(customerId);
	}

	@Override
	public void addCustomer(Customer customer) {
		accountMapper.addCustomer(customer);		
	}

	@Override
	public void addTransactions(Transactions transaction) {
		accountMapper.addTransactions(transaction);
	}

	@Override
	public void addEmploymentInfos(EmploymentInfos employmentInfos) {
		accountMapper.addEmploymentInfos(employmentInfos);
	}

	@Override
	public void addBeneficiariesTrustee(BeneficiariesTrustee beneficiariesTrustee) {
		accountMapper.addBeneficiariesTrustee(beneficiariesTrustee);
	}

	@Override
	public void addLiabilities(Liabilities liabilities) {
		accountMapper.addLiabilities(liabilities);
	}

	@Override
	public void addAssets(Asset asset) {
		accountMapper.addAssets(asset);
	}

	@Override
	public void addIncomes(Incomes incomes) {
		accountMapper.addIncomes(incomes);
	}

	@Override
	public void addNewOwnFunds(NewOwnFunds newOwnFunds) {
		accountMapper.addNewOwnFunds(newOwnFunds);
	}

	@Override
	public void addBankLoans(BankLoans bankLoans) {
		accountMapper.addBankLoans(bankLoans);
	}

	@Override
	public void addInvestmentTransfers(InvestmentTransfers investmentTransfers) {
		accountMapper.addInvestmentTransfers(investmentTransfers);
	}

	@Override
	public Transactions showDetail(String customerId) {
		return accountMapper.showDetail(customerId);
	}

	@Override
	public List<EmploymentInfos> getEmploymentInfosList(String customerId) {
		return accountMapper.getEmploymentInfosList(customerId);
	}

	@Override
	public List<BeneficiariesTrustee> getBeneficiariesList(String customerId) {
		return accountMapper.getBeneficiariesList(customerId);
	}

	@Override
	public List<Liabilities> getLiabilitiesList(String customerId) {
		return accountMapper.getLiabilitiesList(customerId);
	}

	@Override
	public List<Assets> getAssetsList(String customerId) {
		return accountMapper.getAssetsList(customerId);
	}

	@Override
	public List<Incomes> getIncomesList(String customerId) {
		return accountMapper.getIncomesList(customerId);
	}

	@Override
	public List<NewOwnFunds> getNewOwnFundsList(String customerId) {
		return accountMapper.getNewOwnFundsList(customerId);
	}

	@Override
	public List<BankLoans> getBankLoansList(String customerId) {
		return accountMapper.getBankLoansList(customerId);
	}

	@Override
	public List<InvestmentTransfers> getInvTransList(String customerId) {
		return accountMapper.getInvTransList(customerId);
	}

	@Override
	public Transactions getTransaction(String customerId) {
		return accountMapper.getTransaction(customerId);
	}

	@Override
	public void updateTransaction(Transactions transaction) {
		accountMapper.updateTransaction(transaction);
	}

	@Override
	public void updateCustomer(Customer customer) {
		accountMapper.updateCustomer(customer);
	}

	@Override
	public void updateEmploymentInfos(EmploymentInfos employmentInfo) {
		accountMapper.updateEmploymentInfos(employmentInfo);
	}

	@Override
	public void updateBeneficiariesTrustee(BeneficiariesTrustee beneficiariesTrustee) {
		accountMapper.updateBeneficiariesTrustee(beneficiariesTrustee);
	}

	@Override
	public void updateLiabilities(Liabilities liability) {
		accountMapper.updateLiabilities(liability);
	}

	@Override
	public void updateAssets(Asset asset) {
		accountMapper.updateAssets(asset);
	}

	@Override
	public void updateIncomes(Incomes income) {
		accountMapper.updateIncomes(income);
	}

	@Override
	public void updateNewOwnFunds(NewOwnFunds newOwnFund) {
		accountMapper.updateNewOwnFunds(newOwnFund);
	}

	@Override
	public void updateBankLoans(BankLoans bankLoan) {
		accountMapper.updateBankLoans(bankLoan);
	}

	@Override
	public void updateInvestmentTransfers(InvestmentTransfers investmentTransfer) {
		accountMapper.updateInvestmentTransfers(investmentTransfer);
	}

	@Override
	public EmploymentInfos checkEmploymentInfos(EmploymentInfos employmentInfo) {
		return accountMapper.checkEmploymentInfos(employmentInfo);
	}

	@Override
	public Asset checkAssets(Asset asset) {
		return accountMapper.checkAssets(asset);
	}

	@Override
	public List<NewOwnFundsTable> selectAllNewOwnFunds() {
		return accountMapper.selectAllNewOwnFunds();
	}

	@Override
	public List<BankLoansTable> selectAllBankLoans() {
		return accountMapper.selectAllBankLoans();
	}

	@Override
	public List<InvTransTable> selectAllInvTrans() {
		return accountMapper.selectAllInvTrans();
	}

	@Override
	public List<TransactionTable> queryTrans(Conditions conditions) {
		return accountMapper.queryTrans(conditions);
	}

	@Override
	public List<CustomerTable> queryCustomer(Conditions conditions) {
		return accountMapper.queryCustomer(conditions);
	}

	@Override
	public List<NewOwnFundsTable> queryNOF(Conditions conditions) {
		return accountMapper.queryNOF(conditions);
	}

	@Override
	public List<BankLoansTable> queryBL(Conditions conditions) {
		return accountMapper.queryBL(conditions);
	}

	@Override
	public List<InvTransTable> queryIT(Conditions conditions) {
		return accountMapper.queryIT(conditions);
	}

	@Override
	public String getCustomerIdByCoApplicantId(String customerId) {
		return accountMapper.getCustomerIdByCoApplicantId(customerId);
	}
	
}
