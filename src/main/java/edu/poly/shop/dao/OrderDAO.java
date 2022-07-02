package edu.poly.shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.shop.model.Order;

public interface OrderDAO extends JpaRepository<Order, Long>{

}
