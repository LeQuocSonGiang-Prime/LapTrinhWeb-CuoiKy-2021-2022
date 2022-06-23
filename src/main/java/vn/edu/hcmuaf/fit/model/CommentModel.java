package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CommentModel implements Serializable {

    private UserModel user;
    private HouseModel house;
    private String comment;
    private int star;
    private Date time_cmt;

    private static List<CommentModel> listComment = new ArrayList<>();

    public CommentModel() {
    }

    public UserModel getUser() {
        return user;
    }

    public static List<CommentModel> getListComment() {
        return listComment;
    }

    public static void setListComment(List<CommentModel> listComment) {
        CommentModel.listComment = listComment;
    }

    public static void insertListComment(CommentModel commentModel) {
        CommentModel.listComment.add(commentModel);
    }

    public static List<CommentModel> selectCommentByIdUser(String id_user) {
        List<CommentModel> result = new ArrayList<>();
        for (CommentModel i : listComment) {
            if (i.user.getId().equals(id_user))
                result.add(i);
        }
        return result;
    }

    public static List<CommentModel> selectCommentByIdHouse(String id_house) {
        List<CommentModel> result = new ArrayList<>();
        for (CommentModel i : listComment) {
            if (i.house.getId().equals(id_house))
                result.add(i);
        }
        return result;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }

    public HouseModel getHouse() {
        return house;
    }

    public void setHouse(HouseModel house) {
        this.house = house;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int start) {
        this.star = start;
    }

    public Date getTime_cmt() {
        return time_cmt;
    }

    public void setTime_cmt(Date time_cmt) {
        this.time_cmt = time_cmt;
    }
}
