package edu.poly.shop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.shop.dao.CategoryDAO;
import edu.poly.shop.model.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO dao;
	
	@RequestMapping("admin/category")
	public String list(Model model) {		
		List<Category> list = dao.findAll();
		model.addAttribute("categories", list);
		
		return "admin/category";
	}
	
	@RequestMapping("admin/category/edit/{categoryID}")
		public String edit(Model model, @PathVariable("categoryID") Integer categoryID) {
		Category item = dao.findById(categoryID).get();
		model.addAttribute("item", item);
		
		List<Category> list = dao.findAll();
		model.addAttribute("categories", list);
		
		return "admin/category";
	}
	
	@RequestMapping("admin/category/save")
	public String save(Category category) {
		dao.save(category);
		
		return "redirect:/admin/category";
	}
	
	@RequestMapping("admin/category/update/{categoryID}")
	public String update(Category category) {
		dao.save(category);
		
		return "redirect:/admin/category";
	}
	
	@RequestMapping("admin/category/delete/{categoryID}")
	public String delete(@PathVariable("categoryID") Integer categoryID) {
		dao.deleteById(categoryID);
		
		return "redirect:/admin/category";
	}
}
