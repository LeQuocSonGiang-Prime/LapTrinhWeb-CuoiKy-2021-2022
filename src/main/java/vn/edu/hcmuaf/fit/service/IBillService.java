package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.BillModel;

import java.util.List;

public interface IBillService {

    int totalBillOfUser(String id_user);

    int totalBillOfHouse(String id_house);

    List<BillModel> findBillByUser(String id_user);

    List<BillModel> findBillByHouse(String id_house);

}
