package com.javaweb.service.impl;

import java.util.List;

import com.javaweb.po.Guahao;

public interface GuahaoService {
	public void queren(Guahao guahao);
	
	public boolean existGuahao(Guahao guahao);
	
	public int deleteGuahao(Guahao guahao);
	
	public List<Guahao> queryGuahaos(String phonenumber);
}
