package edu.poly.shop.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import edu.poly.shop.model.Product;

public interface ProductDAO extends JpaRepository<Product, Long> {
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);
}
