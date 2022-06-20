package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class BillModel implements Serializable {

    private String user;
    private String house;
    private Date time_Checkin;
    private Date time_Checkout;
    private Date time_Order;

    public BillModel(String id_user, String id_house, Date time_Checkin, Date time_Checkout, Date time_Order) {
        this.user = id_user;
        this.house = id_house;
        this.time_Checkin = time_Checkin;
        this.time_Checkout = time_Checkout;
        this.time_Order = time_Order;
    }

    public BillModel(){}

    public String getUser() {
        return user;
    }

    public void setUser(String id_user) {
        this.user = id_user;
    }

    public String getId_house() {
        return house;
    }

    public void setId_house(String id_house) {
        this.house = id_house;
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
}
