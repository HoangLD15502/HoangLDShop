package edu.poly.shop.service;

import java.util.Collection;

import edu.poly.shop.model.CartItem;

public interface CartService {

	int getCount();

	double getAmount();

	void clear();

	Collection<CartItem> getCartItems();

	void insert(CartItem item);

	void update(Long productID, int quantity);

	void remove(Long productID);

}
