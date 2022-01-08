package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class CommentModel implements Serializable {

    private String id_user;
    private String id_house;
    private String comment;
    private int start;
    private Date time_cmt;

    public CommentModel(String id_user, String id_house, String comment, int start, Date time_cmt) {
        this.id_user = id_user;
        this.id_house = id_house;
        this.comment = comment;
        this.start = start;
        this.time_cmt = time_cmt;
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

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public Date getTime_cmt() {
        return time_cmt;
    }

    public void setTime_cmt(Date time_cmt) {
        this.time_cmt = time_cmt;
    }
}
