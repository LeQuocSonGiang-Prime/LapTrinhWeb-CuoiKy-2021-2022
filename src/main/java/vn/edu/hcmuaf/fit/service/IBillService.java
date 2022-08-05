package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.BillModel;

import java.util.List;

public interface IBillService {

    int totalBill();

    int totalBillOfUser(String id_user);

    int totalBillOfHouse(String id_house);

    List<BillModel> findBillByUser(String id_user);

    List<BillModel> findBillByHouse(String id_house);

    List<BillModel> findAllBill();

    boolean confirmOrder(String id);

    BillModel findBillById(String id);

    boolean removeBill(String id_bill);

    boolean removeBillByIdHouse(String id_house);

    boolean removeBillByUser(String id_user);

}
