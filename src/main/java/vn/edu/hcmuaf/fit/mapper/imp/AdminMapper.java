package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.AdminModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminMapper implements IRowMapper<AdminModel> {
    @Override
    public AdminModel mapRow(ResultSet rs) {
        try {
            AdminModel result = new AdminModel();
            result.setUsername(rs.getString("username"));
            result.setName(rs.getString("name"));
            result.setPassword(rs.getString("password"));
            result.setAvatar(rs.getString("avatar"));
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }
}
