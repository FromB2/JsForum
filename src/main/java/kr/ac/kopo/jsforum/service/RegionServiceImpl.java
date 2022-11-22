package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.jsforum.dao.RegionDao;
import kr.ac.kopo.jsforum.model.Region;

import java.util.List;

@Service
public class RegionServiceImpl implements RegionService {
	@Autowired
	RegionDao dao;
	@Override
	public Region item(int num) {
		
		return dao.item(num);
	}

	@Override
	public void add(Region region) {
		dao.add(region);

	}

	@Override
	public List<Region> list(Pager pager) {
		return dao.list(pager);
	}



}
