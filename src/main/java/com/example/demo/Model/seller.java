package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class seller 
{
	@Id
	private String fid;
	private String fname;
	private String flocation;
	private String fdetail;
	private String filename;
	private String uname;
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFlocation() {
		return flocation;
	}
	public void setFlocation(String flocation) {
		this.flocation = flocation;
	}
	public String getFdetail() {
		return fdetail;
	}
	public void setFdetail(String fdetail) {
		this.fdetail = fdetail;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	@Override
	public String toString() {
		return "seller [fid=" + fid + ", fname=" + fname + ", flocation=" + flocation + ", fdetail=" + fdetail
				+ ", filename=" + filename + ", uname=" + uname + "]";
	}
	
	
	
	
}
