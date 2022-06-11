package edu.poly.shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.shop.model.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	
}
