package com.javaweb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaweb.dao.impl.ExpertDao;
import com.javaweb.po.Expert;


@Service("expertService")
@Transactional
public class ExpertServiceImpl implements ExpertService{
	@Autowired
	private ExpertDao expertDao;
	@Override
	public Expert queryExpert(String name) {
		return expertDao.queryExpert(name);
	}
	@Override
	public int deleteExpert(Expert expert) {
		// TODO 自动生成的方法存根
		return expertDao.deleteExpert(expert);
	}
	@Override
	public List<Expert> queryExperts() {
		// TODO 自动生成的方法存根
		return expertDao.queryExperts();
	}
	@Override
	public void tjExpert(Expert expert) {
		// TODO 自动生成的方法存根
		expertDao.saveExpert(expert);
	}
	
}
