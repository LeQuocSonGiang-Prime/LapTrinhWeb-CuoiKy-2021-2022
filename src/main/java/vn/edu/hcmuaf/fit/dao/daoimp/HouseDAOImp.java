package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IHouseDAO;
import vn.edu.hcmuaf.fit.mapper.imp.HouseMapper;
import vn.edu.hcmuaf.fit.model.HouseModel;

import java.util.List;

public class HouseDAOImp extends AbstractDAO<HouseModel> implements IHouseDAO {

    @Override
    public List<HouseModel> selectAll() {
        String sql = "SELECT name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house";
        return query(sql, new HouseMapper());
    }

    @Override
    public List<HouseModel> select24Element(int offSet) {
        String sql = "SELECT name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house LIMIT ?, 24";
        return query(sql, new HouseMapper(), offSet);
    }
}
