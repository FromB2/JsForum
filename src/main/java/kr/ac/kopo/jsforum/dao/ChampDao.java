package kr.ac.kopo.jsforum.dao;

import java.util.List;

import kr.ac.kopo.jsforum.model.Champ;
import kr.ac.kopo.jsforum.pager.Pager;

public interface ChampDao {


	void delete(int num);

	void add(Champ item);

	Champ item(int num);

	void update(Champ item);

	List<Champ> list(Pager pager);
}
