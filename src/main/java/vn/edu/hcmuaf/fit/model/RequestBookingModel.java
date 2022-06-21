package vn.edu.hcmuaf.fit.model;

import java.sql.Date;

public class RequestBookingModel {

    private String user;
    private String house;
    private Date time_checkin;
    private Date time_checkout;
    private Date time_order;

    public RequestBookingModel(){}

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getHouse() {
        return house;
    }

    public void setHouse(String house) {
        this.house = house;
    }

    public Date getTime_checkin() {
        return time_checkin;
    }

    public void setTime_checkin(Date time_checkin) {
        this.time_checkin = time_checkin;
    }

    public Date getTime_checkout() {
        return time_checkout;
    }

    public void setTime_checkout(Date time_checkout) {
        this.time_checkout = time_checkout;
    }

    public Date getTime_order() {
        return time_order;
    }

    public void setTime_order(Date time_order) {
        this.time_order = time_order;
    }
}
