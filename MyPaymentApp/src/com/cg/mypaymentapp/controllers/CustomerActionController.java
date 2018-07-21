package com.cg.mypaymentapp.controllers;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.mypayment.services.WalletService;
import com.cg.mypaymentapp.beans.Customer;

@Controller
public class CustomerActionController {

	@Autowired(required=true)
	private WalletService service;
	
	@RequestMapping(value="/createCustomer",method=RequestMethod.POST)
	public ModelAndView registerCustomer(@ModelAttribute("customer") Customer customer) {
		try
		{
			customer=service.createAccount(customer);
			ModelAndView modelAndView = new ModelAndView("createAccountSuccess", "customer", customer);
			return modelAndView;
		} catch(Exception e)
		{
			e.printStackTrace();
		}
		return new ModelAndView("error");
	}
	
	@RequestMapping(value="/showBalance")
	public ModelAndView showBalance(@RequestParam("mobileNo")String mobileNo) {
		try
		{
			Customer customer=service.showBalance(mobileNo);
			ModelAndView modelAndView = new ModelAndView("showBalanceSuccess", "customer", customer);
			return modelAndView;
		} catch(Exception e)
		{
			e.printStackTrace();
		}
		return new ModelAndView("error");
	}
	
	@RequestMapping(value="/fundTransfer")
	public ModelAndView fundTransfer(@RequestParam("sourceMobileNo")String sourceMobileNo,@RequestParam("targetMobileNo")String targetMobileNo,@RequestParam("amount")BigDecimal amount) {
		try
		{
			Customer customer=service.fundTransfer(sourceMobileNo, targetMobileNo, amount);
			ModelAndView modelAndView = new ModelAndView("fundTransferSuccess", "customer", customer);
			return modelAndView;
		} catch(Exception e)
		{
			e.printStackTrace();
		}
		return new ModelAndView("error");
	}
	
	@RequestMapping(value="/depositAmount")
	public ModelAndView depositAmount(@RequestParam("mobileNo")String mobileNo,@RequestParam("amount")BigDecimal amount) {
		try
		{
			Customer customer=service.depositAmount(mobileNo, amount);
			ModelAndView modelAndView = new ModelAndView("depositAmountSuccess", "customer", customer);
			return modelAndView;
		} catch(Exception e)
		{
			e.printStackTrace();
		}
		return new ModelAndView("error");
	}
	
	@RequestMapping(value="/withdrawAmount")
	public ModelAndView withdrawAmount(@RequestParam("mobileNo")String mobileNo,@RequestParam("amount")BigDecimal amount) {
		try
		{
			Customer customer=service.withdrawAmount(mobileNo, amount);
			ModelAndView modelAndView = new ModelAndView("withdrawAmountSuccess", "customer", customer);
			return modelAndView;
		} catch(Exception e)
		{
			e.printStackTrace();
		}
		return new ModelAndView("error");
	}
}
