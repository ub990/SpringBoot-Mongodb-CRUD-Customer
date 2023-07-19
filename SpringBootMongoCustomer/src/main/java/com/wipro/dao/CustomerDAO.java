package com.wipro.dao;

import org.springframework.data.mongodb.repository.MongoRepository;
import com.wipro.bean.Customer;

public interface CustomerDAO extends MongoRepository<Customer,Integer>{

}
