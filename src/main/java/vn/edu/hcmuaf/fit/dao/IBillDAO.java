package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.BillModel;

import java.util.List;

public interface IBillDAO extends IGenericDAO<BillModel> {

    int totalBill();
    int totalBillOfHouse(String id_house);
    int totalBillOfUser(String id_user);

    List<BillModel> findBillByHouse(String id_house);

    List<BillModel> findBillByUser(String id_user);

    List<BillModel> newBill();

    List<BillModel> findAllBill();
}
