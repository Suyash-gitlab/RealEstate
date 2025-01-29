package com.example.demo.Controllers;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Model.seller;
import com.example.demo.Service.SellerService;
import com.example.demo.Service.UserService;

@Controller
public class SellerController 
{

	@Autowired
	SellerService sc;
	
	@Autowired
	UserService us;
	
	@RequestMapping("/SellProperty")
	public String One(HttpSession s1,Model m)
	{
		if(s1.getAttribute("temp")==null)
		{
			return "redirect:/login";
		}
		String x=s1.getAttribute("temp").toString();
		m.addAttribute("kk",x);	
		
		String h=(String)s1.getAttribute("all");
	
		return "SellProperty";
	}
	
	
	@PostMapping("/savedetails")
	public String two(@ModelAttribute seller s1,@RequestParam("file") MultipartFile fname,HttpSession sk,@RequestParam String uname) throws Exception
	{
		String path="C:\\Users\\ADMIN NP\\OneDrive\\Desktop\\Java\\Framework\\New_RealEstate_Project\\src\\main\\resources\\static\\images";
		
		String f1= fname.getOriginalFilename();
		File fk = new File(path);
		fname.transferTo(new File(fk,f1));
		s1.setFilename(f1);
		
		String u1=UUID.randomUUID().toString();
		s1.setFid(u1);
		
		
		s1.setUname(uname);
		sc.saveinfo(s1);
		
		sk.setAttribute("edit", "edit");
		
		return "redirect:/Display";
	}
	
	
	@RequestMapping("/Display")
	public String Display(Model m,HttpSession s1)
	{
		List<seller> l1 =sc.getallinfo();
		m.addAttribute("temp",l1);
		
	if(s1.getAttribute("edit")!=null)
	{
		s1.setAttribute("k", "edit");
		return "Display";
	}
		return "Display";
	}
	
	
	
	@RequestMapping("/BuyProperty")
	public String nine(HttpSession s1,Model m)
	{

		List<seller> l1=sc.getallinfo();
		 m.addAttribute("kk",l1);
		
		return "redirect:/Display";
	}
	
	
	@RequestMapping("/Myprop/{name}")
	public String ten(@PathVariable String name,Model m)
	{
	 
		  List<seller> l1=sc.getSingleUser(name);	
		  
		  System.out.println(l1.toString());
		  m.addAttribute("all",l1);
		  
		return "Myprop";
	}
	
	@RequestMapping("/buypropo")
	public String ele(HttpSession s1)
	{
		if(s1.getAttribute("temp")==null)
		{
			return "redirect:/login";
		}
		
		return "index";
	}
	
	
	@RequestMapping("/deleteProp/{name}")
	public String twel(@PathVariable String name)
	{
		String k=sc.DeleteSingleUser(name);
		
		System.out.println(k);
		return "redirect:/Myprop";
	}
	
	
	
	
	
}
