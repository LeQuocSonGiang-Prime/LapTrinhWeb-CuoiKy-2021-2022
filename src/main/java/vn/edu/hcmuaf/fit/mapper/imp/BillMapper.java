package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.serviceimp.HouseServiceImp;
import vn.edu.hcmuaf.fit.service.serviceimp.UserServiceImp;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BillMapper implements IRowMapper<BillModel> {

    @Override
    public BillModel mapRow(ResultSet rs) {
        try {
            BillModel result = new BillModel();
            UserServiceImp userService = new UserServiceImp();
            String id_user = rs.getString("id_user");
            if (UserModel.checkUserExist(id_user)) {
                result.setUser(UserModel.getUserById(id_user));
            } else {
                UserModel user = userService.selectByIDNoneInject(id_user);
                UserModel.insertUser(user);
                result.setUser(user);
            }
            HouseServiceImp houseService = new HouseServiceImp();
            String id_house = rs.getString("id_house");
            if (HouseModel.checkHouseExist(id_house)) {
                HouseModel houseModel = HouseModel.getHouseById(id_house);
                assert houseModel != null;
                houseModel.setTotalDayOrder(houseModel.getTotalDayOrder() + rs.getInt("datediff"));
                result.setHouse(houseModel);
            } else {
                HouseModel house = houseService.selectHouseByIdNoneInject(id_house);
                HouseModel.insertListHouse(house);
                house.setTotalDayOrder(house.getTotalDayOrder() + rs.getInt("datediff"));
                result.setHouse(house);
            }

            result.setTime_Order(rs.getDate("time_order"));
            result.setTime_Checkin(rs.getDate("time_checkin"));
            result.setTime_Checkout(rs.getDate("time_checkout"));
            result.setConfirm(rs.getInt("confirm"));
            result.setId(rs.getString("id_bill"));
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
