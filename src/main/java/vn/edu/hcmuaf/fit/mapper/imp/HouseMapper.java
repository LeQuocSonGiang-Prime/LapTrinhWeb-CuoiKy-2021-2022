package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.dao.ImageDAO;
import vn.edu.hcmuaf.fit.dao.daoimp.ImageDAOImp;
import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class HouseMapper implements IRowMapper<HouseModel> {

    @Override
    public HouseModel mapRow(ResultSet resultSet) {
        try {
            HouseModel house = new HouseModel();
            house.setId(resultSet.getString("id_house"));
            house.setName(resultSet.getString("name"));
            house.setType(resultSet.getInt("type"));
            house.setTutorial(resultSet.getString("tutorial"));
            house.setAddress(resultSet.getString("address"));
            house.setDetail(resultSet.getString("detail"));
            house.setForYou(resultSet.getString("foryou"));
            house.setPrice(resultSet.getInt("price"));
            house.setSalePrice(resultSet.getInt("saleprice"));
            ImageDAO imageDAO = new ImageDAOImp();
            house.setImage(imageDAO.findImageById_House(resultSet.getString("id_house")));
            System.out.println("list image house: "+ imageDAO.findImageById_House(resultSet.getString("id_house")));
            return house;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
