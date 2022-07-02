package edu.poly.shop.controller.user;

import java.util.Collection;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.shop.dao.ProductDAO;
import edu.poly.shop.model.CartItem;
import edu.poly.shop.model.Product;
import edu.poly.shop.service.CartService;

@Controller
public class UserCartController {
	@Autowired
	CartService cartService;
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("cart")
	public String list(Model model) {
		Collection<CartItem> cartItem = cartService.getCartItems();
		model.addAttribute("items", cartItem);
		model.addAttribute("total", cartService.getAmount());
		model.addAttribute("count", cartService.getCount());
		
		return "user/cart";
	}
	
	@RequestMapping("cart/insert/{productID}")
	public String insert(@PathVariable("productID") Long productID) {
		Product product = dao.findById(productID).get();
		
		if (product != null) {
			CartItem item = new CartItem();
			product.setQuantity(0);
			BeanUtils.copyProperties(product, item);
			cartService.insert(item);
		}
		
		return "redirect:/cart";
	}
	
	@RequestMapping("cart/update")
	public String update(@RequestParam("productID") Long productID,
			@RequestParam("quantity") Integer quantity) {
		cartService.update(productID, quantity);
		
		return "redirect:/cart";
	}
	
	@RequestMapping("cart/remove/{productID}")
	public String remove(@PathVariable("productID") Long productID) {
		cartService.remove(productID);
		return "redirect:/cart";
	}
	
	@RequestMapping("cart/clear")
	public String clear() {
		return "redirect:/cart";
	}
}
