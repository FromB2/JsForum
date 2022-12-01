package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.model.Reply;
import kr.ac.kopo.jsforum.model.Free;
import kr.ac.kopo.jsforum.model.User;
import kr.ac.kopo.jsforum.pager.Pager;

import java.util.List;

public interface FreeService {
    List<Free> list(Pager pager);

    void add(Free item);

    Free item(int num);

    void update(Free item);

    void delete(int num);

    void replyAdd(Reply reply);

    List<Reply> replyList(int num);

    void deleteComment(Reply item);

    Reply replyItem(int num);
}
