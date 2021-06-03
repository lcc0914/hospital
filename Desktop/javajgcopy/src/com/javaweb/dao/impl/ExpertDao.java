package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.po.Expert;

public interface ExpertDao {
	public Expert queryExpert(String name);
	
	public int saveExpert(Expert expert);
	
	public List<Expert> queryExperts();
	
	public int deleteExpert(Expert expert);
}
