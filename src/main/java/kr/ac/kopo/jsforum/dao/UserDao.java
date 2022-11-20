package kr.ac.kopo.jsforum.dao;

import kr.ac.kopo.jsforum.model.User;

public interface UserDao {
    void signup(User item);

    User lgoin(User user);

    int checkId(String id);
}
