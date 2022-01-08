package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class billModel implements Serializable {

    private String id_user;
    private String id_house;
    private Date time_Checkin;
    private Date time_Checkout;

    public billModel(String id_user, String id_house, Date time_Checkin, Date time_Checkout) {
        this.id_user = id_user;
        this.id_house = id_house;
        this.time_Checkin = time_Checkin;
        this.time_Checkout = time_Checkout;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getId_house() {
        return id_house;
    }

    public void setId_house(String id_house) {
        this.id_house = id_house;
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
}
