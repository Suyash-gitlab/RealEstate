




package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.seller;
import com.example.demo.Repo.SellerRepo;
import com.example.demo.Service.SellerService;


@Service
public class SellerDao implements SellerService
{
	@Autowired
	SellerRepo SP;

	@Override
	public void saveinfo(seller s1) 
	{
		SP.save(s1);
	}

	
	@Override
	public List<seller> getallinfo() 
	{
		return SP.findAll();
	}


	@Override
	public List<seller> getSingleUser(String x) 
	{
		return SP.findByUname(x);

	}


	
	@Override
	public String DeleteSingleUser(String x)
	{
		SP.deleteByUname(x);
		return "Recoed Deleted Successfully...!!!";
	}
	
	


	
	
	
	

}
