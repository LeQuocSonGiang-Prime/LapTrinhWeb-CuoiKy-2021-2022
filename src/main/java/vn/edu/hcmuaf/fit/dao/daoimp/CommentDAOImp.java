package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.ICommentDAO;
import vn.edu.hcmuaf.fit.mapper.imp.CommentMapper;
import vn.edu.hcmuaf.fit.model.CommentModel;

import java.util.List;

public class CommentDAOImp extends AbstractDAO<CommentModel> implements ICommentDAO {
    @Override
    public int totalComment() {
        return sizeTable(3);
    }

    @Override
    public List<CommentModel> findAll() {
        String sql = "SELECT * FROM comment";
        return query(sql, new CommentMapper());
    }

    @Override
    public List<CommentModel> selectCommentByUser(String id_user) {
        String sql = "SELECT * FROM comment WHERE id_user = ?";
        return query(sql, new CommentMapper(), id_user);
    }

    @Override
    public List<CommentModel> selectCommentByHouse(String id_house) {
        String sql = "SELECT * FROM comment WHERE id_house = ?";
        return query(sql, new CommentMapper(), id_house);
    }
}
