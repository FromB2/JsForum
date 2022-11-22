package kr.ac.kopo.jsforum.service;

import java.util.List;

import kr.ac.kopo.jsforum.model.Champ;
import kr.ac.kopo.jsforum.pager.Pager;

public interface ChampService {


	void delete(int num);

	void add(Champ item);

	Champ item(int num);

	void update(Champ item);

	List<Champ> list(Pager pager);
}
