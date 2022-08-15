package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IBillDAO;
import vn.edu.hcmuaf.fit.mapper.imp.BillMapper;
import vn.edu.hcmuaf.fit.model.BillModel;

import java.util.Date;
import java.util.List;

public class BillDAOImp extends AbstractDAO<BillModel> implements IBillDAO {
    @Override
    public int totalBill() {
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
        String sql = "SELECT * , DATEDIFF(time_checkout, time_checkin) as datediff FROM bill WHERE id_house = ?";
        return query(sql, new BillMapper(), id_house);
    }

    @Override
    public List<BillModel> findBillByUser(String id_user) {
        String sql = "SELECT * , DATEDIFF(time_checkout, time_checkin) as datediff FROM bill WHERE id_user = ?";
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
    public boolean confirmOrder(String id_Bill) {
        String sql = "UPDATE bill SET confirm = 1 WHERE id_bill = ?";
        return update(sql, id_Bill);
    }

    @Override
    public BillModel findBillById(String id) {

        return null;
    }

    @Override
    public boolean removeBill(String id_bill) {
        String sql = "DELETE FROM bill WHERE id_bill = ?";
        return update(sql, id_bill);
    }

    @Override
    public boolean removeBillByIdHouse(String id_house) {
        String sql = "DELETE FROM bill WHERE id_house = ?";
        return update(sql, id_house);
    }

    @Override
    public boolean removeBillByIdUser(String id_user) {
        String sql = "DELETE FROM bill WHERE id_user = ?";
        return update(sql, id_user);
    }

    @Override
    public boolean addBill(String id_bill, String id_house, String id_user, Date time_checkin, Date time_checkout, Date time_order, int price) {
        String sql = "INSERT INTO bill (`id_bill`, `id_house`, `id_user`, `time_checkin`, `time_checkout`, `time_order`, `price`) VALUES(?,?,?,?,?,?,?)";
        return update(sql,id_bill, id_house, id_user, time_checkin, time_checkout, time_order, price);
    }


}
