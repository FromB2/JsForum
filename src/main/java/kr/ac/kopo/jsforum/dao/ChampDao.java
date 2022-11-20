package kr.ac.kopo.jsforum.dao;

import java.util.List;

import kr.ac.kopo.jsforum.model.Champ;

public interface ChampDao {

	List<Champ> list();

	void delete(int num);

	void add(Champ item);

	Champ item(int num);

	void update(Champ item);

}
