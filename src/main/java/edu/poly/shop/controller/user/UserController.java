package edu.poly.shop.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("home")
	public String home() {
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
	
	@RequestMapping("cart") 
	public String cart() {
		return "user/cart";
	}
	
	@RequestMapping("sign-in") 
	public String signin() {
		return "user/sign-in";
	}
	
	@RequestMapping("sign-up") 
	public String signup() {
		return "user/sign-up";
	}
	
	@RequestMapping("forgot") 
	public String forgot() {
		return "user/forgot";
	}
	
	@RequestMapping("change") 
	public String change() {
		return "user/change";
	}
	
	@RequestMapping("profile") 
	public String profile() {
		return "user/profile";
	}
	
	@RequestMapping("detail") 
	public String detail() {
		return "user/detail";
	}
}
