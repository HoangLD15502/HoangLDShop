package edu.poly.shop.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.shop.dao.CategoryDAO;
import edu.poly.shop.dao.ProductDAO;
import edu.poly.shop.model.Category;
import edu.poly.shop.model.Product;
import edu.poly.shop.service.SessionService;

@Controller
public class UserHomeController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	CategoryDAO ctdao;
	
	@Autowired
	SessionService sessionService;
	
	@RequestMapping("home")
	public String home(Model model) {
		List<Product> list = dao.findAll();
		model.addAttribute("products", list);
		
		List<Category> ds = ctdao.findAll();
		model.addAttribute("categories", ds);
		
		return "user/index";
	}
	
	@RequestMapping("about") 
	public String about() {
		return "user/about";
	}
	
	@RequestMapping("contact") 
	public String contact() {
		return "user/contact";
	}
	
	@RequestMapping("detail") 
	public String detail() {
		return "user/detail";
	}
	
	@RequestMapping("detail/{productID}")
	public String view(@PathVariable("productID") Long productID) {
		Product product = dao.findById(productID).get();
		sessionService.setAttribute("product", product);
		
		return "user/detail";
	}
	
	@RequestMapping("/search")
	public String searchAndPage(Model model, 
			@RequestParam("keyword") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		List<Category> ds = ctdao.findAll();
		model.addAttribute("categories", ds);
		
		String kwords = kw.orElse(sessionService.getAttribute("keywords"));
		sessionService.setAttribute("keywords", kwords);
		
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page", page);
		return "user/search";
	}
	
	@RequestMapping("/search/{name}")
	public String searchCategory(Model model, 
			@RequestParam("keyword") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		List<Category> ds = ctdao.findAll();
		model.addAttribute("categories", ds);
		
		String kwords = kw.orElse(sessionService.getAttribute("keywords"));
		sessionService.setAttribute("keywords", kwords);
		
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page", page);
		return "user/search";
	}
}
