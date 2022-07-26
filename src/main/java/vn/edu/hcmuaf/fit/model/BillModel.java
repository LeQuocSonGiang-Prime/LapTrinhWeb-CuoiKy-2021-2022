package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class BillModel implements Serializable {

    private String id;
    private HouseModel house;
    private UserModel user;
    private Date time_Checkin;
    private Date time_Checkout;
    private Date time_Order;

    private int confirm;

    private static List<BillModel> listNewBill;
    private int totalBill;

    public BillModel(){}

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public HouseModel getHouse() {
        return house;
    }

    public void setHouse(HouseModel house) {
        this.house = house;
    }

    public UserModel getUser() {
        return user;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }

    public Date getTime_Checkin() {
        return time_Checkin;
    }

    public void setTime_Checkin(Date time_Checkin) {
        this.time_Checkin = time_Checkin;
    }

    public Date getTime_Checkout() {
        return time_Checkout;
    }

    public void setTime_Checkout(Date time_Checkout) {
        this.time_Checkout = time_Checkout;
    }

    public Date getTime_Order() {
        return time_Order;
    }

    public void setTime_Order(Date time_Order) {
        this.time_Order = time_Order;
    }

    public int getConfirm() {
        return confirm;
    }

    public void setConfirm(int confirm) {
        this.confirm = confirm;
    }

    public static List<BillModel> getListNewBill() {
        return listNewBill;
    }

    public static void setListNewBill(List<BillModel> listBill) {
        BillModel.listNewBill = listBill;
    }

    public int getTotalBill() {
        return totalBill;
    }

    public void setTotalBill(int totalBill) {
        this.totalBill = totalBill;
    }

    public static BillModel getBillById(String id){
        for(BillModel bill : listNewBill){
            if(bill.getId().equals(id))
                return bill;
        }return null;
    }

    @Override
    public String toString() {
        return "id: "+house.getId();
    }
}
