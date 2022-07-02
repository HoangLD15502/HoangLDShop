package edu.poly.shop.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.shop.dao.CategoryDAO;
import edu.poly.shop.model.Category;

@Controller
public class AdminCategoryController {
	@Autowired
	CategoryDAO dao;
	
	@RequestMapping("admin/category")
	public String list(Model model) {		
		List<Category> list = dao.findAll();
		model.addAttribute("items", list);
		
		return "admin/category";
	}
	
	@RequestMapping("admin/category/edit/{categoryID}")
		public String edit(Model model, @PathVariable("categoryID") Long categoryID) {
		
		List<Category> list = dao.findAll();
		model.addAttribute("items", list);
		
		Optional<Category> cto = dao.findById(categoryID);
		if (cto.isPresent()) {
			Category category = cto.get();
			model.addAttribute("item", category);
			
			return "admin/category";
		}
		
		return "redirect:/admin/category";
	}
	
	@RequestMapping("admin/category/save")
	public String save(Model model, Category category) {
		dao.save(category);
		model.addAttribute("message", "Lưu thành công !!!");
		
		return "redirect:/admin/category";
	}
	
	@RequestMapping("admin/category/update/{categoryID}")
	public String update(Model model, Category category) {
		dao.save(category);
		model.addAttribute("message", "Cập nhật thành công !!!");
		
		return "redirect:/admin/category";
	}
	
	@RequestMapping("admin/category/delete/{categoryID}")
	public String delete(Model model, @PathVariable("categoryID") Long categoryID) {
		dao.deleteById(categoryID);
		model.addAttribute("message", "Xóa thành công !!!");
		
		return "redirect:/admin/category";
	}
}
