package vn.edu.hcmuaf.fit.dao;

import java.util.List;

public interface ImageDAO extends IGenericDAO<String>{
    List<String> findImageById_House(String id_house);
}
