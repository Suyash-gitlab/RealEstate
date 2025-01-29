package com.example.demo.Repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.Users;
import com.example.demo.Model.seller;

public interface UserRepo extends JpaRepository<Users, String>
{

	public Users findByUemailAndUpass(String x,String y);	
	
	public List<seller> findByUname(String x);

}
