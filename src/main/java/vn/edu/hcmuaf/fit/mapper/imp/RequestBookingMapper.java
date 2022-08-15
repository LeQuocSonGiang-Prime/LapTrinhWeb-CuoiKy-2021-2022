package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.model.RequestBookingModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RequestBookingMapper implements IRowMapper<RequestBookingModel> {
    @Override
    public RequestBookingModel mapRow(ResultSet rs) {
        try {
            RequestBookingModel result = new RequestBookingModel();
            result.setUser(rs.getString("email"));
            result.setHouse(rs.getString("id_house"));
            result.setTime_order(rs.getDate("time_order"));
            result.setTime_checkin(rs.getDate("time_checkin"));
            result.setTime_checkout(rs.getDate("time_checkout"));
            return result;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
}
