package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class PlaceModel implements Serializable {
    private String name;

    public PlaceModel(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
