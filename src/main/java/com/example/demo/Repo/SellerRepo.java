package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.seller;

public interface SellerRepo extends JpaRepository<seller, String>
{

	public List<seller> findByUname(String x);

	public String deleteByUname(String x);

}
