package com.javaweb.service.impl;

import java.util.List;

import com.javaweb.po.Expert;

public interface ExpertService {
	public Expert queryExpert(String name);
	
	public int deleteExpert(Expert expert);
	
	public List<Expert> queryExperts();
	
	public void tjExpert(Expert expert);
}
