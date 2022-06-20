package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.BillModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BillMapper implements IRowMapper<BillModel> {
    @Override
    public BillModel mapRow(ResultSet rs) {
        try {
            BillModel result = new BillModel();
            result.setUser(rs.getString("email"));
            result.setId_house(rs.getString("id_house"));
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
