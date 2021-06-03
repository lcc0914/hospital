package com.javaweb.po;

public class Expert {

	private String name;
	private String keshi;
	private String img="";
	public Expert(String name, String img,String keshi) {
		this.name = name;
		this.img = img;
		this.keshi = keshi;
	}
	public Expert() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getKeshi() {
		return keshi;
	}
	public void setKeshi(String keshi) {
		this.keshi = keshi;
	}
	@Override
	public String toString() {
		return "Expert [name=" + name + ", keshi=" + keshi + ", img=" + img + "]";
	}
	
	
}
