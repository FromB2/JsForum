package kr.ac.kopo.jsforum.dao;

import kr.ac.kopo.jsforum.model.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository

public class UserDaoImpl implements UserDao{
@Autowired
    SqlSession sql;
    @Override
    public void signup(User item) {
        sql.insert("user.signup",item);
    }

    @Override
    public User lgoin(User user) {

        return sql.selectOne("user.login",user);
    }

    @Override
    public int checkId(String id) {
        return sql.selectOne("user.check_id", id);
    }
}
