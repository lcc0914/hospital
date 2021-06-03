package com.javaweb.po;

public class Guahao {
	public String phonenumber;
	public String keshi;
	public String name;
	public String date;
	public String time;
	public Guahao(String phonenumber, String keshi, String name, String date, String time) {
		this.phonenumber = phonenumber;
		this.keshi = keshi;
		this.name = name;
		this.date = date;
		this.time = time;
	}
	
	
	
	public Guahao() {
		super();
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getKeshi() {
		return keshi;
	}
	public void setKeshi(String keshi) {
		this.keshi = keshi;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Guahao [phonenumber=" + phonenumber + ", keshi=" + keshi + ", name=" + name + ", date=" + date
				+ ", time=" + time + "]";
	}
	
	
}
