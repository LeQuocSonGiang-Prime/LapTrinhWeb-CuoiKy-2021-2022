package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class HouseModel extends AbstractModel<HouseModel> implements Serializable {

    private String name;
    private int type;
    private String tutorial;
    private String address;
    private String detail;
    private String forYou;
    private int price;
    private int salePrice;
    private Date time_Checkin;
    private Date time_Checkout;
    private String image;


    public HouseModel(){}
    public HouseModel(String name, int type, String address, String detail, int price, int salePrice, Date time_Checkin, Date time_Checkout) {
        this.name = name;
        this.type = type;
        this.address = address;
        this.detail = detail;
        this.price = price;
        this.salePrice = salePrice;
        this.time_Checkin = time_Checkin;
        this.time_Checkout = time_Checkout;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTutorial() {
        return tutorial;
    }

    public void setTutorial(String tutorial) {
        this.tutorial = tutorial;
    }

    public String getForYou() {
        return forYou;
    }

    public void setForYou(String forYou) {
        this.forYou = forYou;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
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
