package controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

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

@Controller
@RequestMapping("/")
public class AccountController {
	@Autowired
	private AccountService accountService;
	
	@Transactional
	@RequestMapping(value="addaccount",method= {RequestMethod.GET,RequestMethod.POST})
	public String addaccount(HttpServletRequest request,HttpServletResponse response,Transactions transaction) {
		System.out.println(transaction);
		
		if(transaction.getHasCoApplicant()==null || !transaction.getHasCoApplicant()) {
			transaction.setCoApplicant(null);
		}
		String agentCode = transaction.getAgentCode();
		Customer customer = transaction.getCustomer();
		Customer coApplicant = transaction.getCoApplicant();
		
		if(customer!=null && agentCode!=null && agentCode!="") {
			String customerId = customer.getCustomerId();
			if(customerId!=null && customerId!="" && accountService.checkCustomer(customerId)==null) {
				accountService.addCustomer(customer);
				accountService.addTransactions(transaction);
				List<EmploymentInfos> empinfos = customer.getEmploymentInfos();
				List<BeneficiariesTrustee> bts = customer.getBeneficiariesTrustee();
				List<Liabilities> lbs = customer.getLiabilities();
				List<Assets> asts = customer.getAssets();
				List<Incomes> incs = customer.getIncomes();
				List<NewOwnFunds> nofs = customer.getNewOwnFunds();
				List<BankLoans> bls = customer.getBankLoans();
				List<InvestmentTransfers> invs = customer.getInvestmentTransfers();
				
				if(empinfos!=null && empinfos.size()>0) {
					for(EmploymentInfos empinf : empinfos) {
						empinf.setCustomerId(customerId);
						accountService.addEmploymentInfos(empinf);
					}
				}
				
				if(bts!=null && bts.size()>0) {
					for(BeneficiariesTrustee bt : bts) {
						if(bt.getLastName()!=null && bt.getLastName()!="" && bt.getType()!=null && bt.getType()!="") {
							bt.setCustomerId(customerId);
							accountService.addBeneficiariesTrustee(bt);
						}						
					}					
				}
				
				if(lbs!=null && lbs.size()>0) {
					for(Liabilities lb : lbs) {
						if(lb.getMarketValue()!=null && lb.getMarketValue()!=0 || lb.getLiabilityBalance()!=null && lb.getLiabilityBalance()!=0 || lb.getMonthlyLiability()!=null && lb.getMonthlyLiability()!=0 || lb.getMonthlyPropertyTax()!=null && lb.getMonthlyPropertyTax()!=0 || lb.getMonthlyCondoFee()!=null && lb.getMonthlyCondoFee()!=0) {
							lb.setCustomerId(customerId);
							accountService.addLiabilities(lb);
						}
					}
				}
				
				if(asts!=null && asts.size()>0) {
					List<Asset> assetlist = new ArrayList<Asset>();
					for(Assets ast : asts) {
						if(ast.getApplicantValue()!=null && ast.getApplicantValue()!=0) {
							Asset a = new  Asset();
							a.setCustomerId(customerId);
							a.setType(ast.getType());
							a.setApplicantValue(ast.getApplicantValue());
							a.setInstitution(ast.getInstitution());
							assetlist.add(a);
						}
						if(ast.getCoApplicantValue()!=null && ast.getCoApplicantValue()!=0 && coApplicant!=null) {
							String coApplicantId = coApplicant.getCustomerId();
							Asset b = new Asset();
							b.setCustomerId(coApplicantId);
							b.setType(ast.getType());
							b.setApplicantValue(ast.getCoApplicantValue());
							b.setInstitution(ast.getCoInstitution());
							assetlist.add(b);
						}
					}
					for(Asset ast : assetlist) {
						accountService.addAssets(ast);
					}
				}
				
				if(incs!=null && incs.size()>0) {
					for(Incomes inc : incs) {
						if(inc.getAnnual()!=null && inc.getAnnual()!=0) {
							inc.setCustomerId(customerId);
							accountService.addIncomes(inc);
						}
					}
				}
				
				if(nofs!=null && nofs.size()>0) {
					for(NewOwnFunds nof : nofs) {
						if(nof.getAccountType()!=null && nof.getAccountType()!="" && nof.getApplyYear()!=null && nof.getApplyYear()!=0) {
							nof.setCustomerId(customerId);
							accountService.addNewOwnFunds(nof);
						}
					}
				}
				
				if(bls!=null && bls.size()>0) {
					for(BankLoans bl : bls) {
						if(bl.getAccountType()!=null && bl.getAccountType()!="" && bl.getApplyYear()!=null && bl.getApplyYear()!=0) {
							bl.setCustomerId(customerId);
							accountService.addBankLoans(bl);
						}
					}
				}
				
				if(invs!=null && invs.size()>0) {
					for(InvestmentTransfers inv : invs) {
						if(inv.getTransferType()!=null && inv.getTransferType()!="" && inv.getApplyYear()!=null && inv.getApplyYear()!=0) {
							inv.setCustomerId(customerId);
							accountService.addInvestmentTransfers(inv);
						}
					}
				}
			}	
		}
		if(coApplicant!=null && agentCode!=null && agentCode!="") {
			String coApplicantId = transaction.getCoApplicant().getCustomerId();
			if(coApplicantId!=null  && coApplicantId!="" && accountService.checkCustomer(coApplicantId)==null) {
				accountService.addCustomer(coApplicant);
				List<EmploymentInfos> empinfos = coApplicant.getEmploymentInfos();
				
				if(empinfos!=null && empinfos.size()>0) {
					for(EmploymentInfos empinf : empinfos) {
						empinf.setCustomerId(coApplicantId);
						accountService.addEmploymentInfos(empinf);
					}
				}
			}
		}
		return "forward:searchrecord.action";
	}
	
	@RequestMapping(value="searchrecord",method= {RequestMethod.GET,RequestMethod.POST})
	public String searchrecord(Model model) {
		List<TransactionTable> allTransactions = accountService.selectAllTransactions();
		List<CustomerTable> allCustomers = accountService.selectAllCustomers();
		List<NewOwnFundsTable> allNewOwnFunds = accountService.selectAllNewOwnFunds();
		List<BankLoansTable> allBankLoans = accountService.selectAllBankLoans();
		List<InvTransTable> allInvTrans = accountService.selectAllInvTrans();
		model.addAttribute("allTransactions",allTransactions);
		model.addAttribute("allCustomers",allCustomers);
		model.addAttribute("allNewOwnFunds",allNewOwnFunds);
		model.addAttribute("allBankLoans",allBankLoans);
		model.addAttribute("allInvTrans",allInvTrans);
		return "transinfo";
	}
	
	@RequestMapping(value="showDetail",method= {RequestMethod.GET,RequestMethod.POST})
	public String showDetail(Model model,String customerId) {
		System.out.println(customerId);
		if(customerId.contains("*")) {
			customerId = accountService.getCustomerIdByCoApplicantId(customerId.substring(0, 16));
		}
		System.out.println(customerId);
		
		Transactions transdetail = accountService.getTransaction(customerId);
		Customer customer = accountService.checkCustomer(customerId);
		Customer coApplicant =  transdetail.getCoApplicant();
		if(coApplicant!=null) {
			String coApplicantId = coApplicant.getCustomerId();
			if(coApplicantId!=null && coApplicantId!="") {
				coApplicant = accountService.checkCustomer(coApplicantId);
				if(coApplicant!=null) {
					List<EmploymentInfos> coemploymentInfos = accountService.getEmploymentInfosList(coApplicantId);
					coApplicant.setEmploymentInfos(coemploymentInfos);
					transdetail.setCoApplicant(coApplicant);
				}
			}
		}
		if(customer!=null) {
			List<EmploymentInfos> employmentInfos = accountService.getEmploymentInfosList(customerId);
			List<BeneficiariesTrustee> beneficiariesTrustee = accountService.getBeneficiariesList(customerId);
			List<Liabilities> liabilities = accountService.getLiabilitiesList(customerId);
			List<Assets> assets = accountService.getAssetsList(customerId);
			List<Incomes> incomes = accountService.getIncomesList(customerId);
			List<NewOwnFunds> newOwnFunds = accountService.getNewOwnFundsList(customerId);
			List<BankLoans> bankLoans = accountService.getBankLoansList(customerId);
			List<InvestmentTransfers> investmentTransfers = accountService.getInvTransList(customerId);
			customer.setEmploymentInfos(employmentInfos);
			customer.setBeneficiariesTrustee(beneficiariesTrustee);
			customer.setLiabilities(liabilities);
			customer.setAssets(assets);
			customer.setIncomes(incomes);
			customer.setNewOwnFunds(newOwnFunds);
			customer.setBankLoans(bankLoans);
			customer.setInvestmentTransfers(investmentTransfers);
			transdetail.setCustomer(customer);
		}		
		
		model.addAttribute("transdetail",transdetail);
		return "updateaccount";	
	}
	
	@RequestMapping(value="updateaccount",method= {RequestMethod.GET,RequestMethod.POST})
	public String updateaccount(HttpServletRequest request,HttpServletResponse response,Transactions newtrans) {
		System.out.println(newtrans);
		if(newtrans.getHasCoApplicant()==null || !newtrans.getHasCoApplicant()) {
			newtrans.setCoApplicant(null);
		}
		accountService.updateTransaction(newtrans);
		Customer customer = newtrans.getCustomer();
		Customer coApplicant = newtrans.getCoApplicant();
		if(customer!=null) {
			String customerId = customer.getCustomerId();
			List<EmploymentInfos> eis = customer.getEmploymentInfos();
			List<BeneficiariesTrustee> bts = customer.getBeneficiariesTrustee();
			List<Liabilities> lbs = customer.getLiabilities();
			List<Assets> asts = customer.getAssets();
			List<Incomes> incs = customer.getIncomes();
			List<NewOwnFunds> nofs = customer.getNewOwnFunds();
			List<BankLoans> bls = customer.getBankLoans();
			List<InvestmentTransfers> invs = customer.getInvestmentTransfers();
			accountService.updateCustomer(customer);
			if(eis!=null && eis.size()>0) {
				for(EmploymentInfos empinfo : eis) {
					empinfo.setCustomerId(customerId);
					if(accountService.checkEmploymentInfos(empinfo)==null) {
						accountService.addEmploymentInfos(empinfo);
					}else {
						accountService.updateEmploymentInfos(empinfo);
					}
				}
			}
			if(bts!=null && bts.size()>0) {
				for(BeneficiariesTrustee bt : bts) {
					if(bt.getId()!=null && bt.getId()!=0) {
						accountService.updateBeneficiariesTrustee(bt);
					}else {
						if(bt.getLastName()!=null && bt.getLastName()!="" && bt.getType()!=null && bt.getType()!="") {
							bt.setCustomerId(customerId);
							accountService.addBeneficiariesTrustee(bt);
						}
					}
				}
			}
			if(lbs!=null && lbs.size()>0) {
				for(Liabilities lb : lbs) {
					if(lb.getId()!=null && lb.getId()!=0) {
						accountService.updateLiabilities(lb);
					}else {
						if(lb.getMarketValue()!=null && lb.getMarketValue()!=0 || lb.getLiabilityBalance()!=null && lb.getLiabilityBalance()!=0 || lb.getMonthlyLiability()!=null && lb.getMonthlyLiability()!=0 || lb.getMonthlyPropertyTax()!=null && lb.getMonthlyPropertyTax()!=0 || lb.getMonthlyCondoFee()!=null && lb.getMonthlyCondoFee()!=0) {
							lb.setCustomerId(customerId);
							accountService.addLiabilities(lb);
						}
					}
				}
			}
			if(asts!=null && asts.size()>0) {
				List<Asset> assetlist = new ArrayList<Asset>();
				for(Assets ast : asts) {
					if(ast.getApplicantValue()!=null && ast.getApplicantValue()!=0) {
						Asset a = new  Asset();
						a.setCustomerId(customerId);
						a.setType(ast.getType());
						a.setApplicantValue(ast.getApplicantValue());
						a.setInstitution(ast.getInstitution());
						assetlist.add(a);
					}
				}
				for(Asset asset : assetlist) {
					if(accountService.checkAssets(asset)==null) {
						accountService.addAssets(asset);
					}else {
						accountService.updateAssets(asset);
					}
				}
			}
			if(incs!=null && incs.size()>0) {
				for(Incomes inc : incs) {
					if(inc.getId()!=null && inc.getId()!=0) {
						accountService.updateIncomes(inc);
					}else {
						if(inc.getAnnual()!=null && inc.getAnnual()!=0) {
							inc.setCustomerId(customerId);
							accountService.addIncomes(inc);
						}
					}
				}
			}
			if(nofs!=null && nofs.size()>0) {
				for(NewOwnFunds nof : nofs) {
					if(nof.getId()!=null && nof.getId()!=0) {
						accountService.updateNewOwnFunds(nof);
					}else {
						if(nof.getAccountType()!=null && nof.getAccountType()!="" && nof.getApplyYear()!=null && nof.getApplyYear()!=0) {
							nof.setCustomerId(customerId);
							accountService.addNewOwnFunds(nof);
						}
					}
				}
			}
			if(bls!=null &&bls.size()>0) {
				for(BankLoans bl : bls) {
					if(bl.getId()!=null && bl.getId()!=0) {
						accountService.updateBankLoans(bl);
					}else {
						if(bl.getAccountType()!=null && bl.getAccountType()!="" && bl.getApplyYear()!=null && bl.getApplyYear()!=0) {
							bl.setCustomerId(customerId);
							accountService.addBankLoans(bl);
						}
					}
				}
			}
			if(invs!=null &&invs.size()>0) {
				for(InvestmentTransfers inv : invs) {
					if(inv.getId()!=null && inv.getId()!=0) {
						accountService.updateInvestmentTransfers(inv);
					}else {
						if(inv.getTransferType()!=null && inv.getTransferType()!="" && inv.getApplyYear()!=null && inv.getApplyYear()!=0) {
							inv.setCustomerId(customerId);
							accountService.addInvestmentTransfers(inv);
						}
					}
				}
			}
		}
		
		if(coApplicant!=null) {
			String coApplicantId = coApplicant.getCustomerId();
			String lastName = coApplicant.getLastName();
			List<EmploymentInfos> empinfos = coApplicant.getEmploymentInfos();
			if(coApplicantId!=null && coApplicantId!="" && lastName!=null && lastName!="") {
				if(accountService.checkCustomer(coApplicantId)==null) {
					accountService.addCustomer(coApplicant);
				}else {
					accountService.updateCustomer(coApplicant);
				}
			}
			if(coApplicantId!=null && coApplicantId!="" && empinfos!=null && empinfos.size()>0) {
				for(EmploymentInfos empinfo : empinfos) {
					empinfo.setCustomerId(coApplicantId);
					if(accountService.checkEmploymentInfos(empinfo)==null) {
						accountService.addEmploymentInfos(empinfo);
					}else {
						accountService.updateEmploymentInfos(empinfo);
					}
				}
			}
			if(customer!=null && coApplicantId!=null && coApplicantId!="") {
				List<Assets> asts = customer.getAssets();
				if(asts!=null && asts.size()>0) {
					List<Asset> assetlist = new ArrayList<Asset>();
					for(Assets ast : asts) {
						if(ast.getCoApplicantValue()!=null && ast.getCoApplicantValue()!=0) {
							Asset b = new Asset();
							b.setCustomerId(coApplicantId);
							b.setType(ast.getType());
							b.setApplicantValue(ast.getCoApplicantValue());
							b.setInstitution(ast.getCoInstitution());
							assetlist.add(b);
						}
					}
					for(Asset asset : assetlist) {
						if(accountService.checkAssets(asset)==null) {
							accountService.addAssets(asset);
						}else {
							accountService.updateAssets(asset);
						}
					}
				}
			}
		}
		
		return "forward:searchrecord.action";
	}
	
	@RequestMapping(value="checkInfo",method= {RequestMethod.GET,RequestMethod.POST})
	public String checkInfo(Model model,Conditions conditions) {
		List<TransactionTable> allTransactions = accountService.queryTrans(conditions);
		List<CustomerTable> allCustomers = accountService.queryCustomer(conditions);
		List<NewOwnFundsTable> allNewOwnFunds = accountService.queryNOF(conditions);
		List<BankLoansTable> allBankLoans = accountService.queryBL(conditions);
		List<InvTransTable> allInvTrans = accountService.queryIT(conditions);
		model.addAttribute("allTransactions",allTransactions);
		model.addAttribute("allCustomers",allCustomers);
		model.addAttribute("allNewOwnFunds",allNewOwnFunds);
		model.addAttribute("allBankLoans",allBankLoans);
		model.addAttribute("allInvTrans",allInvTrans);
		model.addAttribute("condition", conditions);
		
		return "transinfo";
	}
	
}
