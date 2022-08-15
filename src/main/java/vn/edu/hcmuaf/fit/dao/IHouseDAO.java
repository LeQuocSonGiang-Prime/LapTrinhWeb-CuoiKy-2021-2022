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


    boolean removeHouseById(String id_house);

    List<HouseModel> select4Element(int index);

    List<HouseModel> select24HouseByKind(int type,int index);

    int countHouseByType(int type);

    List<HouseModel> select24ElementByLocation(String locationHouse, int ipageNumber);

    List<HouseModel> select24HouseByTypeAndLocation(String typeOfHouse, String locationHouse, int ipageNumber);

    int findHouseByID(String id_house);

    boolean addHouse(HouseModel house);
}
