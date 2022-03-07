package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.HouseModel;

import java.util.List;

public interface IHouseService {

    List<HouseModel> selectAll();

    List<HouseModel> select24Element(int offSet);

}
