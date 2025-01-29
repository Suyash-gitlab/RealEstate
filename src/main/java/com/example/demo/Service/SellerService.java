package com.example.demo.Service;

import java.util.List;

import com.example.demo.Model.seller;

public interface SellerService 
{

	public void saveinfo(seller s1);
	
	public List<seller> getallinfo();
	
	public List<seller> getSingleUser(String x);
	
	public String DeleteSingleUser(String x);

	
	
}
