package vn.edu.hcmuaf.fit.mapper.imp;

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
            house.setImage(resultSet.getString("image"));
            return house;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
