package com.wipro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wipro.bean.Customer;
import com.wipro.service.CustomerService;
import com.wipro.service.SequnceGeneratorService;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerService service;
	
	@Autowired
	SequnceGeneratorService ser;
	
	@RequestMapping("/")
	public String showIndex(Model m) {
		return "menuCustomer";
	}
	
	@RequestMapping("/menu")
	public String showMenu(Model m) {
		return "menuCustomer";
	}
	
	@RequestMapping("/home")
	public String showHome(Model m) {
		return "menuCustomer";
	}
	
	@RequestMapping("/add")
	public String showSaveForm() {
		return "Add";
	}

	@RequestMapping("/display")
	public String showDisplayForm() {
		return "Display";
	}
	
	@RequestMapping("/delete")
	public String showDeleteForm() {
		return "Delete";
	}
	
	@RequestMapping("/update")
	public String showUpdateForm() {
		return "Update";
	}

	@RequestMapping("/displayAll")
	public String showAll(Model m) {
		m.addAttribute("CustList",service.findAll());
		return "DisplayAll";
	}
	
	@RequestMapping("/addCust")
	public String addCust(Customer cust, Model m) {
		//generate ID
		cust.setCustid(ser.getSequenceNumber(Customer.SEQUNCE_NAME));
		service.save(cust);
		m.addAttribute("message","Department added successfully!!");
		return "Out";
	}				
	
	@RequestMapping("/showCust")
	public String displayCust(Customer cust, Model m) {
		
		Customer c = service.findById(cust.getCustid());
		if(c!=null) {
			m.addAttribute("cust", c);
			m.addAttribute("message", "Customer Information");
			return "DisplayCust";
		}
		m.addAttribute("message", "Customer with given ID does not exist!!");
		return "Out";
	}
	
	@RequestMapping("/deleteCust")
	public String deleteCust(Customer cust, Model m) {
		boolean custDeleted = service.deleteById(cust.getCustid());
		if(custDeleted) {
			m.addAttribute("message", "Customer with given ID is deleted!!");
			return "Out";
		}
		m.addAttribute("message", "Customer with given ID does not exist!!");
		return "Out";
	}
	
	@RequestMapping("/getCust")
	public String showCustToUpdate(Customer cust, Model m) {
		Customer out = service.findById(cust.getCustid());
		if(out!=null) {
			m.addAttribute("cust", out);
			return "UpdateCust";
		}
		m.addAttribute("message", "Customer with given ID does not exist!!");
		return "Out";
	}
	
	@RequestMapping("/updateCust")
	public String updateCust(Customer cust, Model m) {
		
		Customer c = service.update(cust);
		m.addAttribute("message","Customer updated!!");
		m.addAttribute("cust", c);
		return "DisplayCust";
	}
	
	@RequestMapping("/showAll")
	public String displayAllCust(Model m) {
		m.addAttribute("CustList",service.findAll());
		return "DisplayAll";
	}
	
}
