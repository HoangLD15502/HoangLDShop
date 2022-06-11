package edu.poly.shop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.shop.dao.ProductDAO;
import edu.poly.shop.model.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("admin/product")
	public String list(Model model) {
		List<Product> list = dao.findAll();
		model.addAttribute("products", list);
		return "admin/product";
	}
	
	@RequestMapping("admin/product/edit/{productID}")
		public String edit(Model model, @PathVariable("productID") Integer productID) {
		Product item = dao.findById(productID).get();
		model.addAttribute("item", item);
		
		List<Product> items = dao.findAll();
		model.addAttribute("products", items);
		return "admin/category";
	}
	
	@RequestMapping("admin/product/save")
	public String save(Product product) {
		dao.save(product);
		return "redirect:/admin/product";
	}
	
	@RequestMapping("admin/product/update/{productID}")
	public String update(Product product) {
		dao.save(product);
		return "redirect:/admin/product";
	}
	
	@RequestMapping("admin/product/delete/{productID}")
	public String delete(@PathVariable("productID") Integer productID) {
		dao.deleteById(productID);
		return "redirect:/admin/product";
	}
}
