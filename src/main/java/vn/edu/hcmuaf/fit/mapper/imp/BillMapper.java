package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IHouseService;
import vn.edu.hcmuaf.fit.service.IUserService;

import javax.inject.Inject;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BillMapper implements IRowMapper<BillModel> {
    @Inject
    private IUserService userService;
    @Inject
    private IHouseService houseService;
    @Override
    public BillModel mapRow(ResultSet rs) {
        try {
            BillModel result = new BillModel();
            HouseModel house = houseService.selectHouseById(rs.getString("id_house"));
            UserModel user = userService.selectById(rs.getString("id_user"));
            result.setUser(user);
            result.setHouse(house);
            result.setTime_Order(rs.getDate("time_order"));
            result.setTime_Checkin(rs.getDate("time_checkin"));
            result.setTime_Checkout(rs.getDate("time_checkout"));
            return result;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
}
