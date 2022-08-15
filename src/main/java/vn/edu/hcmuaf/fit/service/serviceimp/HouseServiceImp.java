package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IHouseDAO;
import vn.edu.hcmuaf.fit.dao.daoimp.HouseDAOImp;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import java.util.List;

public class HouseServiceImp implements IHouseService {

    @Inject
    private IHouseDAO houseDAO;


    @Override
    public List<HouseModel> selectAll() {
        return houseDAO.selectAll();
    }

    @Override
    public List<HouseModel> select24Element(int offSet) {
        return houseDAO.select24Element((offSet - 1) * 24);
    }

    @Override
    public int totalHouse() {
        return houseDAO.totalHouse();
    }

    @Override
    public HouseModel selectHouseById(String id_house) {
        return houseDAO.selectById(id_house);
    }

    @Override
    public List<HouseModel> selectAllNoneExist() {
        return houseDAO.selectAllNoneExist();
    }

    @Override
    public boolean removeHouseById(String id_house) {
        return houseDAO.removeHouseById(id_house);
    }

    @Override
    public List<HouseModel> select4Element(int index) {
        return houseDAO.select4Element(index);
    }

    @Override
    public List<HouseModel> select24HouseByKind(int type, int index) {
        return houseDAO.select24HouseByKind(type, (index - 1) * 24);
    }

    @Override
    public int countHouseByType(int type) {
        return houseDAO.countHouseByType(type);
    }

    @Override
    public List<HouseModel> select24ElementByLocation(String locationHouse, int ipageNumber) {
        return houseDAO.select24ElementByLocation(locationHouse, (ipageNumber-1)*24);
    }

    @Override
    public List<HouseModel> select24HouseByTypeAndLocation(String typeOfHouse, String locationHouse, int ipageNumber) {
        return houseDAO.select24HouseByTypeAndLocation(typeOfHouse, locationHouse, (ipageNumber-1)*24);
    }

    @Override
    public boolean findHouseByID(String id_house) {
        return houseDAO.findHouseByID(id_house)!=0;
    }

    @Override
    public boolean addHouse(HouseModel house) {
        return houseDAO.addHouse(house);
    }

    public HouseModel selectHouseByIdNoneInject(String id_house) {
        HouseDAOImp house = new HouseDAOImp();
        return house.selectById(id_house);
    }



}
