package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.model.Free;

import java.util.List;

public interface FreeService {
    List<Free> list();

    void add(Free item);

    Free item(int num);

    void update(Free item);

    void delete(int num);
}
