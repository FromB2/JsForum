package kr.ac.kopo.jsforum.service;

import kr.ac.kopo.jsforum.model.Region;

public interface RegionService {

	Region item(int num);

    void add(Region region);
}
