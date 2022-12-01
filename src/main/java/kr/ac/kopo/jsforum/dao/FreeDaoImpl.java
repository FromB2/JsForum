package kr.ac.kopo.jsforum.dao;

import kr.ac.kopo.jsforum.model.Reply;
import kr.ac.kopo.jsforum.model.Free;
import kr.ac.kopo.jsforum.pager.Pager;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class FreeDaoImpl implements FreeDao{
    @Autowired
    SqlSession sql;


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

    @Override
    public List<Free> list(Pager pager) {
        return sql.selectList("free.list", pager);
    }

    @Override
    public int total(Pager pager) {
        return sql.selectOne("free.total", pager);
    }

    @Override
    public void replyAdd(Reply reply) {
        sql.insert("free.replyAdd",reply);
    }

    @Override
    public List<Reply> replyList(int num) {
        return sql.selectList("free.replyList", num);
    }

    @Override
    public void deleteComment(Reply item) {
        sql.delete("free.deleteComment",item);
    }

    @Override
    public Reply replyItem(int num) {
        return sql.selectOne("free.replyItem",num);
    }
}
