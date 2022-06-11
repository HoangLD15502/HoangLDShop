package edu.poly.shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.shop.model.Customer;

public interface CustomerDAO extends JpaRepository<Customer, Integer> {
	
}
