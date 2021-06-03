package com.javaweb.po;

import java.io.Serializable;

public class User implements Serializable{
	private String phonenumber;
	private String password;
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "user [phonenumber=" + phonenumber + ", password=" + password + "]";
	}
	
	public User(String phonenumber, String password) {
		this.phonenumber = phonenumber;
		this.password = password;
	}
	public User() {
		super();
	}
	
}