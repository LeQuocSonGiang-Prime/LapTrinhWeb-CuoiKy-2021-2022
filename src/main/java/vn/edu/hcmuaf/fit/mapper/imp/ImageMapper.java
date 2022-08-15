package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImageMapper implements IRowMapper<String> {
    @Override
    public String mapRow(ResultSet rs) {
         try{
             return rs.getString("image");
         }catch(SQLException e){
             e.printStackTrace();
             return null;
         }
    }
}
