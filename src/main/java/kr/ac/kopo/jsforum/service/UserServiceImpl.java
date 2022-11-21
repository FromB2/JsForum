package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.dao.UserDao;
import kr.ac.kopo.jsforum.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserDao dao;

    @Override
    public boolean login(User user) {
        User item = dao.lgoin(user); // 모델에있는 유저를 가지고 아이템이라는 이름으로 부를거임 그리고 dao한테 보내는거다.

        if(item!=null){
            user.setPw(item.getPw());
            user.setName(item.getName());

            return true;
        }else
            return false;
    }

    @Override
    public void signup(User item) {
        dao.signup(item);
    }

    @Override
    public boolean checkId(String id) {
        if(dao.checkId(id) == 0)
            return true;

        return false;
    }
}
