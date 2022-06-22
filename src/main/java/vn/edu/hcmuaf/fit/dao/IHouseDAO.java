package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.dao.daoimp.HouseDAOImp;
import vn.edu.hcmuaf.fit.model.HouseModel;

import java.sql.Connection;
import java.util.List;

public interface IHouseDAO extends IGenericDAO<HouseModel> {
    Connection getConnection();

    List<HouseModel> selectAll();

    List<HouseModel> select24Element(int offSet);

    int totalHouse();

    HouseModel selectById(String id_house);

    List<HouseModel> selectAllNoneExist();

}
