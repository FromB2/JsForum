package kr.ac.kopo.jsforum.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.jsforum.model.Champ;

@Repository
public class ChampDaoImpl implements ChampDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Champ> list() {
		
		return sql.selectList("champ.list");
	}

	@Override
	public void delete(int num) {
		sql.delete("champ.delete", num);

	}

	@Override
	public void add(Champ item) {
		sql.insert("champ.add", item);

	}

	@Override
	public Champ item(int num) {
		
		return sql.selectOne("champ.item", num);
	}

	@Override
	public void update(Champ item) {
		sql.update("champ.update", item);

	}

}
