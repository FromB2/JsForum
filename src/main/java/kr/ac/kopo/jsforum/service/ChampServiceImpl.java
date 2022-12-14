package kr.ac.kopo.jsforum.service;

import java.util.List;

import kr.ac.kopo.jsforum.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.jsforum.dao.ChampDao;
import kr.ac.kopo.jsforum.model.Champ;

@Service
public class ChampServiceImpl implements ChampService {

	@Autowired
		ChampDao dao;
	


	@Override
	public void delete(int num) {
		dao.delete(num);

	}

	@Override
	public void add(Champ item) {
		dao.add(item);

	}

	@Override
	public Champ item(int num) {
		
		return dao.item(num);
	}

	@Override
	public void update(Champ item) {
		dao.update(item);

	}

	@Override
	public List<Champ> list(Pager pager) {
		return dao.list(pager);
	}

}
