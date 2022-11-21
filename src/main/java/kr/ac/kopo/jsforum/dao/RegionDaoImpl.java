package kr.ac.kopo.jsforum.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.jsforum.model.Region;

import java.util.List;

@Repository
public class RegionDaoImpl implements RegionDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public Region item(int num) {
		
		return sql.selectOne("region.item", num);
	}

	@Override
	public void add(Region region) {
		sql.insert("region.add", region);
	}

	@Override
	public List<Region> list() {
		return sql.selectList("region.list");
	}


}
