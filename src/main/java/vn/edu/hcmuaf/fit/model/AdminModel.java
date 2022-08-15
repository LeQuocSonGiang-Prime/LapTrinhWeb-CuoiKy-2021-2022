package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class AdminModel implements Serializable {

    private String username;
    private String password;
    private String avatar;
    private String name;

    public AdminModel(){}
    public AdminModel(String username, String password, String avatar,String name) {
        this.username = username;
        this.password = password;
        this.avatar = avatar;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
