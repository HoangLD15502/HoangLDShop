package edu.poly.shop.controller.user;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.shop.dao.AccountDAO;
import edu.poly.shop.model.Account;
import edu.poly.shop.service.CookieService;
import edu.poly.shop.service.EmailService;
import edu.poly.shop.service.SessionService;

@Controller
public class UserAccountController {
	@Autowired
	AccountDAO dao;
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	CookieService cookieService;
	
	@Autowired
	EmailService emailService;
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping("sign-in")
	public String showForm() {
		return "user/sign-in";
	}
	
	@RequestMapping("/signin")
	public String signin(Model model, @Validated @ModelAttribute("account") Account account, 
			@RequestParam("username") String username, @RequestParam("password") String password) {
		
		try {
			account = dao.getById(username);
			if (!username.equals(account.getUsername())) {
				model.addAttribute("message", "Tên người dùng sai !!!");
				return "sign-in";
			}else if (!password.equals(account.getPassword())) {
				model.addAttribute("message", "Mật khẩu sai !!!");
				return "sign-in";
			}else {
				sessionService.setAttribute("account", account);
				return "redirect:/home";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "sign-in";
	}
	
	@RequestMapping("sign-out")
	public String signout() {
		request.getSession().invalidate();
		return "redirect:/sign-in";
	}
	
	@RequestMapping("sign-up")
	public String signup() {
		return "user/sign-up";
	}
	
	@RequestMapping("signup")
	public String dangKy(Model model, Account account) {
		account.setSignUpDate(new Date());
		account.setRole(false);
		dao.save(account);
		
		return "redirect:/sign-in";
	}
	
	@RequestMapping("send")
	public String sendCode(Model model, @RequestParam("username") String username, 
			@RequestParam("email") String email) {
		Account account = dao.findById(username).get();
		try {
			if (account.getUsername().isEmpty()) {
				model.addAttribute("message", "Tên người dùng không tồn tại !!!");
			} else {
				emailService.send(email, "Mật khẩu của bạn", account.getPassword());
				model.addAttribute("message", "Mật khẩu của bạn đã được gửi về email !!!");
			}
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/forgot";
	}
	
	@RequestMapping("forgot")
	public String forgot() {
		return "user/forgot";
	}
	
	@RequestMapping("change")
	public String change() {
		return "user/change";
	}
	
	@RequestMapping("update/{username}")
	public String update(Model model, @PathVariable("username") String username,
			@RequestParam("password") String password, @RequestParam("newpassword") String newpassword,
			@RequestParam("confirm") String confirm) {
		Account account = dao.findById(username).get();
		
		if (password.equals(account.getPassword())) {
			if (confirm.equals(newpassword)) {
				account.setPassword(newpassword);
				dao.save(account);
				model.addAttribute("message", "Đổi mật khẩu thành công !!!");
				return "redirect:/sign-out";
			}
		}
		
		return "change";
	}
	
	@RequestMapping("profile") 
	public String profile() {
		return "user/profile";
	}
	
	@RequestMapping("save/{username}") 
	public String updateProfile(Model model, Account account) {
		account.setSignUpDate(new Date());
		dao.save(account);
		return "redirect:/sign-out";
	}
}
