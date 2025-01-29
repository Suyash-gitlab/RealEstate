package com.example.demo.Service;


import java.util.List;

import com.example.demo.Model.Users;
import com.example.demo.Model.seller;


public interface UserService 
{
	public void registerUser(Users u1);
	
	public Users Checkdata(String x, String y);
	
	public List<seller> getSingleUser(String x);
	

}