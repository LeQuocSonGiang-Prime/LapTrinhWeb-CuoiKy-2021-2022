package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.ICommentDAO;
import vn.edu.hcmuaf.fit.model.CommentModel;
import vn.edu.hcmuaf.fit.service.ICommentService;

import javax.inject.Inject;
import java.util.List;

public class CommentServiceImp implements ICommentService {
    @Inject
    private ICommentDAO commentDAO;
    @Override
    public int totalComment() {
        return commentDAO.totalComment();
    }

    @Override
    public List<CommentModel> findAll() {
        return commentDAO.findAll();
    }

    @Override
    public List<CommentModel> selectByUser(String id_user) {
        return commentDAO.selectCommentByUser(id_user);
    }

    @Override
    public List<CommentModel> selectByHouse(String id_house) {
        return commentDAO.selectCommentByHouse(id_house);
    }
}
