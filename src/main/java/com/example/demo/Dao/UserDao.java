package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Users;
import com.example.demo.Model.seller;
import com.example.demo.Repo.UserRepo;
import com.example.demo.Service.UserService;


@Service
public class UserDao implements UserService
{
	@Autowired
	UserRepo ur;

	@Override
	public void registerUser(Users u1) 
	{
		ur.save(u1);
	}

	@Override
	public Users Checkdata(String x, String y) 
	{
		return ur.findByUemailAndUpass(x, y);
	}

	@Override
	public List<seller> getSingleUser(String x) 
	{
		return ur.findByUname(x);
	}

}
