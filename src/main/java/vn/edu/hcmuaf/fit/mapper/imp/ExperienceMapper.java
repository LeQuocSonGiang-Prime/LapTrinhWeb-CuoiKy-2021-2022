package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.ExperienceModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ExperienceMapper implements IRowMapper<ExperienceModel> {
    @Override
    public ExperienceModel mapRow(ResultSet rs) {
        try{
            ExperienceModel result = new ExperienceModel();
            result.setId(rs.getString("id_place"));
            result.setName(rs.getString("name"));
            result.setImage(rs.getString("image"));
            result.setLink(rs.getString("link"));
            result.setHeart(rs.getInt("heart"));
            return result;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
}
