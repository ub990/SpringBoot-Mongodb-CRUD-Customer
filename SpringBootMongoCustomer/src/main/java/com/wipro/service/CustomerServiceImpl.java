package com.wipro.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.bean.Customer;
import com.wipro.dao.CustomerDAO;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	CustomerDAO dao;
	
	@Override
	public Customer save(Customer c) {
		return dao.save(c);
	}
	
	@Override
	public Customer findById(Integer id) {
		return dao.findById(id).orElse(null);
	}
	
	@Override
	public boolean deleteById(Integer id) {
		Customer cust = dao.findById(id).orElse(null);
		if(cust==null) {
			return false;
		}
		dao.deleteById(id);
		return true;
	}
	
	@Override
	public Customer update(Customer d) {
		return dao.save(d);
	}
	
	@Override
	public List<Customer> findAll() {
		List<Customer> list = new ArrayList<Customer>();
		dao.findAll().forEach(dept -> list.add(dept));
		return list;
	}

}
