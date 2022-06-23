package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public class HouseModel implements Serializable, Comparable<HouseModel> {

    private String name;
    private String id;
    private int type;
    private String tutorial;
    private String address;
    private String detail;
    private String forYou;
    private int price;
    private int salePrice;
    private String image;
    private double star;


    private static List<HouseModel> listResult = new ArrayList<>();
    private static int totalHouse;
    private  int totalDayOrder;

    public HouseModel() {
    }

    public HouseModel(String name, int type, String address, String detail, int price, int salePrice) {
        this.name = name;
        this.type = type;
        this.address = address;
        this.detail = detail;
        this.price = price;
        this.salePrice = salePrice;
    }

    public double getStar() {
        return star;
    }

    public void setStar(double star) {
        this.star = star;
    }

    public static void insertListHouse(HouseModel house) {
        listResult.add(house);
    }

    public  int getTotalDayOrder() {
        return totalDayOrder;
    }

    public  void setTotalDayOrder(int totalDayOrder) {
       this.totalDayOrder = totalDayOrder;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public static List<HouseModel> getListResult() {
        return listResult;
    }

    public static void setListResult(List<HouseModel> listResult) {
        HouseModel.listResult = listResult;
    }

    public static int getTotalHouse() {
        return totalHouse;
    }

    public static void setTotalHouse(int totalHouse) {
        HouseModel.totalHouse = totalHouse;
    }

    public String toString() {
        return "{name:" + name + ",type:" + type + ",address:" + address + ",detail:" + detail + ",price:" + price + ",salePrice:" + salePrice + "}";
    }

    public static boolean checkHouseExist(String id) {
        for (HouseModel i : listResult) {
            if (i.id.equals(id))
                return true;
        }
        return false;
    }
    public static HouseModel getHouseById(String id){
        for (HouseModel i : listResult) {
            if (i.id.equals(id))
                return i;
        }
        return null;
    }

    @Override
    public int compareTo(HouseModel o) {
       return  o.totalDayOrder- this.totalDayOrder;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        HouseModel that = (HouseModel) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
