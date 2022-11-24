package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.model.Comment;
import kr.ac.kopo.jsforum.model.Free;
import kr.ac.kopo.jsforum.pager.Pager;

import java.util.List;

public interface FreeService {
    List<Free> list(Pager pager);

    void add(Free item);

    Free item(int num);

    void update(Free item);

    void delete(int num);

    void replyAdd(Comment reply);

    List<Comment> replyList(int num);
}
