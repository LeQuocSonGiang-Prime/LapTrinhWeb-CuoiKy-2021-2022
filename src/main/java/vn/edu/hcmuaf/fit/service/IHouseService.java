package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.HouseModel;

import java.util.List;

public interface IHouseService {

    List<HouseModel> selectAll();

    List<HouseModel> select24Element(int offSet);

    int totalHouse();

    HouseModel selectHouseById(String id_house);

    List<HouseModel> selectAllNoneExist();

    boolean removeHouseById(String id_house);

    List<HouseModel> select4Element(int index);

    List<HouseModel> selectHouseByKind(int type, int index);

    int countHouseByType(int type);
}
