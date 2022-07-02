package edu.poly.shop.controller.admin;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.poly.shop.dao.CategoryDAO;
import edu.poly.shop.dao.ProductDAO;
import edu.poly.shop.model.Category;
import edu.poly.shop.model.Product;
import edu.poly.shop.service.ParamService;

@Controller
public class AdminProductController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	CategoryDAO ctdao;
	
	@Autowired
	ParamService paramService;
	
	@RequestMapping("admin/product")
	public String list(Model model) {
		List<Category> ctlist = ctdao.findAll();
		model.addAttribute("category", ctlist);
		
		List<Product> list = dao.findAll();
		model.addAttribute("items", list);
		return "admin/product";
	}
	
	@RequestMapping("admin/product/edit/{productID}")
		public String edit(Model model, @PathVariable("productID") Long productID) {
		List<Category> ctlist = ctdao.findAll();
		model.addAttribute("category", ctlist);
		
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		
		Optional<Product> cto = dao.findById(productID);
		if (cto.isPresent()) {
			Product product = cto.get();
			model.addAttribute("item", product);
			
			return "admin/product";
		}
		
		return "admin/product";
	}
	
	@RequestMapping("admin/product/save")
	public String save(Model model, Product product, @RequestParam("images") MultipartFile multipartFile) {
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String uploadFile = "uploads/";
		paramService.save(multipartFile, uploadFile);
		product.setImage(fileName);
		product.setPostDate(new Date());
		dao.save(product);
		model.addAttribute("message", "Lưu thành công !!!");
		
		return "redirect:/admin/product";
	}
	
	@RequestMapping("admin/product/update/{productID}")
	public String update(Model model, Product product, @RequestParam("images") MultipartFile multipartFile) {
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String uploadFile = "uploads/";
		paramService.save(multipartFile, uploadFile);
		product.setImage(fileName);
		product.setPostDate(new Date());
		dao.save(product);
		model.addAttribute("message", "Cập nhật thành công !!!");
		
		return "redirect:/admin/product";
	}
	
	@RequestMapping("admin/product/delete/{productID}")
	public String delete(Model model, @PathVariable("productID") Long productID) {
		dao.deleteById(productID);
		model.addAttribute("message", "Xóa thành công !!!");
		
		return "redirect:/admin/product";
	}
}
