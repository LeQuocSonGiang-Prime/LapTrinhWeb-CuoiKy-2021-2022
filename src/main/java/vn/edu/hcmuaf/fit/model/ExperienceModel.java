package vn.edu.hcmuaf.fit.model;

import java.util.ArrayList;
import java.util.List;

public class ExperienceModel {

    private String name;
    private String id;
    private String image;
    private String link;


    private static List<ExperienceModel> listExperience  = new ArrayList<>();


    public ExperienceModel(){}

    public static List<ExperienceModel> getListExperience() {
        return listExperience;
    }

    public static void setListExperience(List<ExperienceModel> listExperience) {
        ExperienceModel.listExperience = listExperience;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

}
