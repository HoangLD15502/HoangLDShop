package edu.poly.shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.shop.model.Account;

public interface AccountDAO extends JpaRepository<Account, String> {

}
