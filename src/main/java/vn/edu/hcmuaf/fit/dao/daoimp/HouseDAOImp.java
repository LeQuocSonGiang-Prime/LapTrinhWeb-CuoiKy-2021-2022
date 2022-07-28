package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IHouseDAO;
import vn.edu.hcmuaf.fit.mapper.imp.HouseMapper;
import vn.edu.hcmuaf.fit.model.HouseModel;

import java.util.List;

public class HouseDAOImp extends AbstractDAO<HouseModel> implements IHouseDAO {

    @Override
    public List<HouseModel> selectAll() {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house";
        return query(sql, new HouseMapper());
    }

    @Override
    public List<HouseModel> select24Element(int offSet) {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house LIMIT ?, 24";
        return query(sql, new HouseMapper(), offSet);
    }

    @Override
    public int totalHouse() {
        return sizeTable(5);
    }

    @Override
    public HouseModel selectById(String id_house) {
        String sql = "SELECT house.id_house,name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house WHERE house.id_house = ?";
        return query(sql, new HouseMapper(),id_house).get(0);
    }

    @Override
    public List<HouseModel> selectAllNoneExist() {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house";
        return query(sql, new HouseMapper());
    }

    @Override
    public boolean removeHouseById(String id_house) {
        String sql = "DELETE FROM house WHERE id_house = ?";
        return update(sql, id_house);
    }

}
