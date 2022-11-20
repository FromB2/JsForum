package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.model.User;
public interface UserService {
    boolean login(User user);

    void signup(User item);

    boolean checkId(String id);
}
