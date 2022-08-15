package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class FavouriteModel implements Serializable {
    private String id_house;
    private String id_user;

    public FavouriteModel(String id_user, String id_house) {
        this.id_house = id_house;
        this.id_user = id_user;
    }

    public String getId_house() {
        return id_house;
    }

    public void setId_house(String id_house) {
        this.id_house = id_house;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }
}
