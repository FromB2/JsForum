package kr.ac.kopo.jsforum.dao;

import kr.ac.kopo.jsforum.model.Region;

public interface RegionDao {

	Region item(int num);

    void add(Region region);
}
