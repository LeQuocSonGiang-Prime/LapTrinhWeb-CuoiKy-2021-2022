package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.RequestBookingModel;

import java.util.List;

public interface IRequestBookingDAO extends IGenericDAO<RequestBookingModel>{


    int totalRequestBooking();
    List<RequestBookingModel> findAll();
}
