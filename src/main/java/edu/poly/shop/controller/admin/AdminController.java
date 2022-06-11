package edu.poly.shop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {	
	@RequestMapping("admin/sign-in")
	public String signin() {
		return "admin/sign-in";
	}
	
	@RequestMapping("admin/forgot")
	public String forgot() {
		return "admin/forgot";
	}
	
	@RequestMapping("admin/change")
	public String change() {
		return "admin/change";
	}
}
