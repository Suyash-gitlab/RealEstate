package com.example.demo.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.Users;
import com.example.demo.Model.seller;
import com.example.demo.Service.SellerService;
import com.example.demo.Service.UserService;

@Controller
public class HomeController
{
	@Autowired
	UserService us;
	
	@Autowired
	SellerService sc;

	@RequestMapping("/")
	public String index(HttpSession s1,Model m)
	{
		String  x=(String)s1.getAttribute("temp");
		m.addAttribute("kk",x);	
//		
//	List<seller> l1=us.getSingleUser(x);
//	
//	System.out.println(l1.toString());
		
		
		s1.setAttribute("all", x);
		
		return "index";
	}
	
	
	@RequestMapping("/login")
	public String login()
	{
		
		return "login";
	}
	
	

	@RequestMapping("/Register")
	public String register()
	{
		return "Register";
	}
	
	
	
	@RequestMapping("/saveuserinfo")
	public String Saveinfo(@ModelAttribute Users u1)
	{
		us.registerUser(u1);
		return "redirect:/";
	}
	
	
	

	
	@PostMapping("/checkCred")
	public String four(@RequestParam("uemail") String useremail,@RequestParam("upass") String Password,HttpSession s1)
	{
		Users u=us.Checkdata(useremail, Password);
		
		if(u!=null)
		{
			
			s1.setAttribute("temp", u.getUname());
			return "redirect:/";
			
		}
		return "redirect:/login";
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession s1)
	{
		s1.invalidate();
		return "redirect:/";
	}
	
	

	
}
