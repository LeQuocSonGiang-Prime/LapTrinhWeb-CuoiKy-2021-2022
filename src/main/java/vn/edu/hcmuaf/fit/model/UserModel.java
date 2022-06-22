package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.List;

public class UserModel implements Serializable {

    private String username;
    private String password;
    private String fullName;
    private String email;
    private String phone;
    private String address;
    private String avatar;
    private int status;

    private static List<UserModel> listUser;
    private static List<UserModel> listUserOrderCurrent;
    private static int totalUser;
    private static int totalUserOrderCurrent;

    public UserModel(String username, String password, String email, String fullName) {
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
    }

    public UserModel(String username, String password, String fullName, String email, String phone, String address, String avatar,int status) {
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.avatar = avatar;
        this.status = status;
    }

    public UserModel() {

    }

    public static List<UserModel> getListUserOrderCurrent() {
        return listUserOrderCurrent;
    }

    public static void setListUserOrderCurrent(List<UserModel> listUserOrderCurrent) {
        UserModel.listUserOrderCurrent = listUserOrderCurrent;
    }

    public int getTotalUser() {
        return totalUser;
    }

    public static void setTotalUser(int totalUser) {
        UserModel.totalUser = totalUser;
    }

    public static int getTotalUserOrderCurrent() {
        return totalUserOrderCurrent;
    }

    public static void setTotalUserOrderCurrent(int totalUserOrderCurrent) {
            UserModel.totalUserOrderCurrent = totalUserOrderCurrent;
    }

    public static List<UserModel> getListUser() {
        return listUser;
    }

    public static void setListUser(List<UserModel> listUser) {
        UserModel.listUser = listUser;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
