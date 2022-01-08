package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class AdminModel implements Serializable {

    private String username;
    private String password;

    public AdminModel(String username, String password) {
        this.username = username;
        this.password = password;
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
}
