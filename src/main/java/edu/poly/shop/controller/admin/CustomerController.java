package edu.poly.shop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.shop.dao.CustomerDAO;
import edu.poly.shop.model.Customer;

@Controller
public class CustomerController {
	@Autowired
	CustomerDAO dao;
	
	@RequestMapping("admin/customer")
	public String list(Model model) {
		List<Customer> list = dao.findAll();
		model.addAttribute("customers", list);
		
		return "admin/customer";
	}
	
	@RequestMapping("admin/customer/edit/{customerID}")
	public String edit(Model model, @PathVariable("customerID") Integer customerID) {
		Customer item = dao.findById(customerID).get();
		model.addAttribute("item", item);
		
		List<Customer> list = dao.findAll();
		model.addAttribute("customers", list);
		
		return "admin/customer";
	}
	
	@RequestMapping("admin/customer/save") 
	public String save(Customer customer) {
		dao.save(customer);
		
		return "redirect: admin/customer";
	}

	@RequestMapping("admin/customer/update/{customerID}")
	public String update(Customer customer) {
		dao.save(customer);
		
		return "redirect:admin/customer";
	}
	
	@RequestMapping("admin/customer/delete/{customerID}")
	public String delete(@PathVariable("customerId") Integer customerID) {
		dao.deleteById(customerID);
		
		return "redirect:admin/customer";
	}
}
