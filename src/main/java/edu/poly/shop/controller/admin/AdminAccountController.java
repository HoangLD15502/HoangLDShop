package edu.poly.shop.controller.admin;

import java.util.Date;
import java.util.List;
import java.util.Optional;

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
public class AdminAccountController {
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
	
	@RequestMapping("admin/account")
	public String list(Model model) {		
		List<Account> list = dao.findAll();
		model.addAttribute("items", list);
		
		return "admin/account";
	}
	
	@RequestMapping("admin/account/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username) {
		List<Account> list = dao.findAll();
		model.addAttribute("items", list);
		
		Optional<Account> cto = dao.findById(username);
		if (cto.isPresent()) {
			Account customer = cto.get();
			model.addAttribute("item", customer);
			return "admin/account";
		}
		
		return "admin/account";
	}
	
	@RequestMapping("admin/account/save") 
	public String save(Model model,Account account) {
		account.setSignUpDate(new Date());
		dao.save(account);
		model.addAttribute("message", "Lưu thành công !!!");
		
		return "redirect:/admin/account";
	}

	@RequestMapping("admin/account/update/{username}")
	public String update(Model model, Account account) {
		account.setSignUpDate(new Date());
		dao.save(account);
		model.addAttribute("message", "Cập nhật thành công !!!");
		
		return "redirect:/admin/account";
	}
	
	@RequestMapping("admin/account/delete/{username}")
	public String delete(Model model, @PathVariable("username") String username) {
		dao.deleteById(username);
		model.addAttribute("message", "Xóa thành công !!!");
		
		return "redirect:/admin/account";
	}
	
	@RequestMapping("admin/sign-in")
	public String showForm() {
		return "admin/sign-in";
	}
	
	@RequestMapping("admin/signin")
	public String signin(Model model, @Validated @ModelAttribute("account") Account account, 
			@RequestParam("username") String username, @RequestParam("password") String password) {
		
		try {
			account = dao.getById(username);
			if (account.isRole() == true) {
				if (!username.equals(account.getUsername())) {
					model.addAttribute("message", "Tên người dùng sai !!!");
					return "admin/sign-in";
				}else if (!password.equals(account.getPassword())) {
					model.addAttribute("message", "Mật khẩu sai !!!");
					return "admin/sign-in";
				}else {
					sessionService.setAttribute("account", account);
					return "redirect:/admin/account";
				}
			}else {
				model.addAttribute("message", "Tài khoản của bạn không phải tài khoản nội bộ !!!");
				return "admin/sign-in";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "admin/sign-in";
	}
	
	@RequestMapping("admin/sign-out")
	public String signout() {
		request.getSession().invalidate();
		return "redirect:/admin/sign-in";
	}
	
	@RequestMapping("admin/forgot")
	public String forgot() {
		return "admin/forgot";
	}
	
	@RequestMapping("admin/send")
	public String sendCode(Model model, @RequestParam("username") String username, 
			@RequestParam("email") String email) {
		Account account = dao.findById(username).get();
		try {
			if (account.getUsername().isEmpty()) {
				model.addAttribute("message", "Tên người dùng không tồn tại !!!");
			}else if (!email.equals(account.getEmail())) {
				model.addAttribute("message", "Email không chính xác !!!");
			} else {
				emailService.send(email, "Mật khẩu của bạn", account.getPassword());
				model.addAttribute("message", "Mật khẩu của bạn đã được gửi về email !!!");
				return "redirect:/admin/sign-in";
			}
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "admin/forgot";
	}
	
	@RequestMapping("admin/change")
	public String change() {
		return "admin/change";
	}
	
	@RequestMapping("admin/update/{username}")
	public String update(Model model, @PathVariable("username") String username,
			@RequestParam("password") String password, @RequestParam("newpassword") String newpassword,
			@RequestParam("confirm") String confirm) {
		Account account = dao.findById(username).get();
		
		if (password.equals(account.getPassword())) {
			if (confirm.equals(newpassword)) {
				account.setPassword(newpassword);
				dao.save(account);
				model.addAttribute("message", "Đổi mật khẩu thành công !!!");
				return "redirect:/admin/sign-out";
			}
		}
		
		return "admin/change";
	}
}
