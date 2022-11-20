package kr.ac.kopo.jsforum.dao;

import kr.ac.kopo.jsforum.model.Free;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FreeDaoImpl implements FreeDao{
    @Autowired
    SqlSession sql;

    @Override
    public List<Free> list() {
        return sql.selectList("free.list");
    }

    @Override
    public void add(Free item) {
        sql.insert("free.add",item);
    }

    @Override
    public Free item(int num) {
        return sql.selectOne("free.item", num);
    }

    @Override
    public void update(Free item) {
        sql.update("free.update", item);
    }

    @Override
    public void delete(int num) {
        sql.delete("free.delete",num);
    }
}
