package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IHouseService;
import vn.edu.hcmuaf.fit.service.IUserService;
import vn.edu.hcmuaf.fit.service.serviceimp.HouseService;
import vn.edu.hcmuaf.fit.service.serviceimp.UserServiceImp;

import javax.inject.Inject;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BillMapper implements IRowMapper<BillModel> {

    @Override
    public BillModel mapRow(ResultSet rs) {
        try {
            BillModel result = new BillModel();
            UserServiceImp user = new UserServiceImp();
            result.setUser(user.selectByIDNoneInject(rs.getString("id_user")));
            HouseService house = new HouseService();
            result.setHouse(house.selectHouseByIdNoneInject(rs.getString("id_house")));
            result.setTime_Order(rs.getDate("time_order"));
            result.setTime_Checkin(rs.getDate("time_checkin"));
            result.setTime_Checkout(rs.getDate("time_checkout"));
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
