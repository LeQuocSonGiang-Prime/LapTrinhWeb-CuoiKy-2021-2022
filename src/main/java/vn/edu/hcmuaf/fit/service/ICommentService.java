package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.CommentModel;

import java.util.List;

public interface ICommentService {

    int totalComment();

    List<CommentModel> findAll();

    List<CommentModel> selectByUser(String id_user);

    List<CommentModel> selectByHouse(String id_house);

    boolean removeCommentByIdHouse(String id_house);

    boolean removeCommentByIdUser(String id_user);
}
