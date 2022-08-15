package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.BillModel;

import java.util.Date;
import java.util.List;

public interface IBillDAO extends IGenericDAO<BillModel> {

    int totalBill();
    int totalBillOfHouse(String id_house);
    int totalBillOfUser(String id_user);

    List<BillModel> findBillByHouse(String id_house);

    List<BillModel> findBillByUser(String id_user);

    List<BillModel> findAllBill();
    List<BillModel> findAllNewBill();

    boolean confirmOrder(String id_Bill);

    BillModel findBillById(String id);

    boolean removeBill(String id_bill);

    boolean removeBillByIdHouse(String id_house);

    boolean removeBillByIdUser(String id_user);

    boolean addBill(String id_bill, String id_house, String id_user, Date time_checkin, Date time_checkout,Date time_order, int price);
}
