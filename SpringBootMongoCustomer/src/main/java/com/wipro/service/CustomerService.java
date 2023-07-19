package com.wipro.service;

import java.util.List;

import com.wipro.bean.Customer;

public interface CustomerService {
	
	public Customer save(Customer cust);
	public Customer update(Customer cust);
	public Customer findById(Integer id);
	public boolean deleteById(Integer id);
	public List<Customer> findAll();
	
}
