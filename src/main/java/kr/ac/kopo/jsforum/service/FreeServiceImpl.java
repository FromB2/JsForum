package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.dao.FreeDao;
import kr.ac.kopo.jsforum.model.Comment;
import kr.ac.kopo.jsforum.model.Free;
import kr.ac.kopo.jsforum.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FreeServiceImpl implements FreeService{
    @Autowired
    FreeDao dao;


    @Override
    public List<Free> list(Pager pager) {
        int total = dao.total(pager);

        pager.setTotal(total);

        return dao.list(pager);
    }

    @Override
    public void add(Free item) {

        dao.add(item);
    }

    @Override
    public Free item(int num) {
        return dao.item(num);
    }

    @Override
    public void update(Free item) {
    dao.update(item);
    }

    @Override
    public void delete(int num) {
        dao.delete(num);
    }

    @Override
    public void replyAdd(Comment reply) {
        dao.replyAdd(reply);
    }

    @Override
    public List<Comment> replyList(int num) {
        return dao.replyList(num);
    }
}
