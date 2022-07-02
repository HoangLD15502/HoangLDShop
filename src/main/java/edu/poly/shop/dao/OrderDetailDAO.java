package edu.poly.shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.shop.model.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {

}
