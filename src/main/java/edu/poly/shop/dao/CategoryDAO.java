package edu.poly.shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.shop.model.Category;

public interface CategoryDAO extends JpaRepository<Category, Long> {

}
