package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class BillModel implements Serializable {

    private HouseModel house;
    private UserModel user;
    private Date time_Checkin;
    private Date time_Checkout;
    private Date time_Order;

    private static List<BillModel> listBill;
    private int totalBill;

    public BillModel(){}

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

    public static List<BillModel> getListBill() {
        return listBill;
    }

    public static void setListBill(List<BillModel> listBill) {
        BillModel.listBill = listBill;
    }

    public int getTotalBill() {
        return totalBill;
    }

    public void setTotalBill(int totalBill) {
        this.totalBill = totalBill;
    }
}
