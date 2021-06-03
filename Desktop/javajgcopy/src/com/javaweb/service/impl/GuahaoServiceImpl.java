package com.javaweb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaweb.dao.impl.GuahaoDao;
import com.javaweb.po.Guahao;

@Service("guahaoService")
@Transactional
public class GuahaoServiceImpl implements GuahaoService{

	@Autowired
	private GuahaoDao guahaoDao;
	
	@Override
	public void queren(Guahao guahao) {
		guahaoDao.saveGuahao(guahao);
		
	}

	@Override
	public boolean existGuahao(Guahao guahao) {
		if(guahaoDao.qureyGuahao(guahao)==null) {
			return false;
		}
		return true;
	}

	@Override
	public int deleteGuahao(Guahao guahao) {
		return guahaoDao.deleteGuahao(guahao);
		
	}


	@Override
	public List<Guahao> queryGuahaos(String phonenumber) {
		return guahaoDao.queyGuahaos(phonenumber);
	}

}
