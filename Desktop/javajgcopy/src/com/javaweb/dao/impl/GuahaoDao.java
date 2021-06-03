package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.po.Guahao;

public interface GuahaoDao {
	public Guahao qureyGuahao(Guahao guahao);
	
	public int saveGuahao(Guahao guahao);
	
	public int deleteGuahao(Guahao guahao);
	
	public List<Guahao> queyGuahaos(String phonenumber);
}
