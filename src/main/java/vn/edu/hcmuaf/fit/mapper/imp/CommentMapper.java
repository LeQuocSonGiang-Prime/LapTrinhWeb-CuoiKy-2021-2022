package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.CommentModel;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CommentMapper implements IRowMapper<CommentModel> {
    @Override
    public CommentModel mapRow(ResultSet rs) {
        try{
            CommentModel result = new CommentModel();
            String id_house = rs.getString("id_house");
            String id_user = rs.getString("id_user");
            result.setHouse(HouseModel.getHouseById(id_house));
            result.setUser(UserModel.getUserById(id_user));
            result.setComment(rs.getString("comment"));
            result.setStar(rs.getInt("star"));
            result.setTime_cmt(rs.getDate("time_cmt"));
            return result;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
}