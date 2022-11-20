package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.dao.FreeDao;
import kr.ac.kopo.jsforum.model.Free;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FreeServiceImpl implements FreeService{
    @Autowired
    FreeDao dao;


    @Override
    public List<Free> list() {
        return dao.list();
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
}
