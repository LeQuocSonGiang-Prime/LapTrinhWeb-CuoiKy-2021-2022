package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IRequestBookingDAO;
import vn.edu.hcmuaf.fit.mapper.imp.RequestBookingMapper;
import vn.edu.hcmuaf.fit.model.RequestBookingModel;

import java.util.List;

public class RequestBookingDAOImp extends AbstractDAO<RequestBookingModel> implements IRequestBookingDAO {


    @Override
    public int totalRequestBooking() {
        return sizeTable(8);
    }

    @Override
    public List<RequestBookingModel> findAll() {
        String sql = "SELECT * FROM request_booking";
        return query(sql, new RequestBookingMapper());
    }
}
