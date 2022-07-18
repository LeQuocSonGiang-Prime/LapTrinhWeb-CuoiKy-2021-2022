package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IBillDAO;
import vn.edu.hcmuaf.fit.mapper.imp.BillMapper;
import vn.edu.hcmuaf.fit.model.BillModel;

import java.util.ArrayList;
import java.util.List;

public class BillDAOImp extends AbstractDAO<BillModel> implements IBillDAO {
    @Override
    public int totalBill() {
        System.out.println("totalBill: " + sizeTable(2));
        return sizeTable(2);
    }

    @Override
    public int totalBillOfHouse(String id_house) {
        return findBillByHouse(id_house).size();
    }

    @Override
    public int totalBillOfUser(String id_user) {
        return findBillByUser(id_user).size();
    }

    @Override
    public List<BillModel> findBillByHouse(String id_house) {
        String sql = "SELECT id_bill, id_house, email, time_checkin, time_checkout, time_order FROM bill INNER JOIN user WHERE user.id_user = bill.id_user AND id_house = ?";
        return query(sql, new BillMapper(), id_house);
    }

    @Override
    public List<BillModel> findBillByUser(String id_user) {
        String sql = "SELECT id_bill, id_house, email, time_checkin, time_checkout, time_order FROM bill INNER JOIN user WHERE user.id_user = bill.id_user AND bill.id_user = ?";
        return query(sql, new BillMapper(), id_user);
    }


    @Override
    public List<BillModel> findAllBill() {
        String sql = "SELECT *, DATEDIFF(time_checkout, time_checkin) as datediff FROM bill ORDER BY confirm ASC";
        return query(sql, new BillMapper());
    }

    @Override
    public List<BillModel> findAllNewBill() {
        String sql = "SELECT *, DATEDIFF(time_checkout, time_checkin) as datediff FROM bill WHERE time_checkout > CURRENT_DATE";
        return query(sql, new BillMapper());
    }

    @Override
    public void confirmOrder(String id_Bill) {
        String sql = "UPDATE bill SET confirm = 1 WHERE id_bill = ?";
        update(sql, id_Bill);
    }
}
