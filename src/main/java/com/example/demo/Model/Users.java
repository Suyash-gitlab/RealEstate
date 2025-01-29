package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Users 
{
	@Id
	private String uname;
	private String unumber;
	private String uemail ;
	private String upass ;
	private String ucpass;
	
	
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUnumber() {
		return unumber;
	}
	public void setUnumber(String unumber) {
		this.unumber = unumber;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getUcpass() {
		return ucpass;
	}
	public void setUcpass(String ucpass) {
		this.ucpass = ucpass;
	}
	@Override
	public String toString() {
		return "Users [uname=" + uname + ", unumber=" + unumber + ", uemail=" + uemail + ", upass=" + upass
				+ ", ucpass=" + ucpass + "]";
	}
	

	

}
