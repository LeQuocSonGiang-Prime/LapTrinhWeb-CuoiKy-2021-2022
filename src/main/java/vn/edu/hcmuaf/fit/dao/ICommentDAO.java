package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.CommentModel;

import java.util.List;

public interface ICommentDAO {

    int totalComment();

    List<CommentModel> findAll();

    List<CommentModel> selectCommentByUser(String id_user);

    List<CommentModel> selectCommentByHouse(String id_house);
}
