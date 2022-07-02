package edu.poly.shop.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import edu.poly.shop.model.CartItem;
import edu.poly.shop.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	private Map<Long, CartItem> map = new HashMap<Long, CartItem>();
	
	@Override
	public void insert(CartItem item) {
		CartItem exitsItem = map.get(item.getProductID());
		
		if (exitsItem != null) {
			exitsItem.setQuantity(item.getQuantity() + exitsItem.getQuantity());
		}else {
			map.put(item.getProductID(), item);
		}
		
		map.put(item.getProductID(), item);
	}
	
	@Override
	public void update(Long productID, int quantity) {
		CartItem item = map.get(productID);
		
		item.setQuantity(quantity + item.getQuantity());
		
		if (item.getQuantity() <= 0) {
			map.remove(productID);
		}
	}
	
	@Override
	public void remove(Long productID) {
		map.remove(productID);
	}
	
	@Override
	public Collection<CartItem> getCartItems() {
		return map.values();
	}
	
	@Override
	public void clear() {
		map.clear();
	}
	
	@Override
	public double getAmount() {
		return map.values().stream().mapToDouble(item->item.getQuantity() * item.getPrice()).sum();
	}
	
	@Override
	public int getCount() {
		if (map.isEmpty()) {
			return 0;
		}
		
		return map.values().size();
	}
}
