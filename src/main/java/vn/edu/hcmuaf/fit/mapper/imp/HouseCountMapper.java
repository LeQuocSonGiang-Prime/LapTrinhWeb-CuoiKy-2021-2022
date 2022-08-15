package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class HouseCountMapper implements IRowMapper<Integer> {
    @Override
    public Integer mapRow(ResultSet rs) throws SQLException {
        return rs.getInt("exist");
    }
}
