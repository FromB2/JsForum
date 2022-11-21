package kr.ac.kopo.jsforum.dao;

import kr.ac.kopo.jsforum.model.Region;

import java.util.List;

public interface RegionDao {

	Region item(int num);

    void add(Region region);

    List<Region> list();
}
